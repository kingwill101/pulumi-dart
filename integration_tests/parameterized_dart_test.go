package integration_tests

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/engine"
	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/stretchr/testify/assert"
	"gopkg.in/yaml.v3"
)

func TestParameterizedDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("parameterized"),
		LocalProviders: []integration.LocalDependency{
			{Package: "testprovider", Path: testProviderPath()},
		},
		PostPrepareProject: func(info *engine.Projinfo) error {
			if len(info.Proj.Plugins.Providers) == 0 {
				return fmt.Errorf("expected at least one provider plugin")
			}

			languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
			if err != nil {
				return err
			}
			pulumiSDKPath, err := pulumiSDKPath()
			if err != nil {
				return err
			}

			providerPath := info.Proj.Plugins.Providers[0].Path
			providerBinary := filepath.Join(info.Root, ".parameterized-testprovider")
			if runtime.GOOS == WindowsOS {
				providerBinary += ".exe"
			}

			cmd := exec.Command(
				"go",
				"build",
				"-o",
				providerBinary,
				"./"+filepath.Base(providerPath),
			)
			cmd.Dir = filepath.Dir(providerPath)
			if out, err := cmd.CombinedOutput(); err != nil {
				return fmt.Errorf("running go build for testprovider failed: %w\n%s", err, string(out))
			}

			cmd = exec.Command("pulumi", "package", "add", providerBinary, "pkg")
			projectPubspecPath := filepath.Join(info.Root, "pubspec.yaml")
			projectPubspec, err := os.ReadFile(projectPubspecPath)
			if err != nil {
				return err
			}
			projectPubspecText := string(projectPubspec)
			if !strings.Contains(projectPubspecText, "dependency_overrides:") {
				projectPubspecText += "\n"
				projectPubspecText += fmt.Sprintf(
					"dependency_overrides:\n  pulumi:\n    path: %s\n",
					filepath.ToSlash(pulumiSDKPath),
				)
			} else if !strings.Contains(projectPubspecText, "pulumi:") {
				projectPubspecText += fmt.Sprintf(
					"  pulumi:\n    path: %s\n",
					filepath.ToSlash(pulumiSDKPath),
				)
			}
			if err := os.WriteFile(projectPubspecPath, []byte(projectPubspecText), 0o600); err != nil {
				return err
			}

			cmd.Dir = info.Root
			cmd.Env = append(os.Environ(), getProviderPath(languagePluginPath))
			if out, err := cmd.CombinedOutput(); err != nil {
				return fmt.Errorf("running pulumi package add failed: %w\n%s", err, string(out))
			}

			project, err := os.ReadFile(filepath.Join(info.Root, "Pulumi.yaml"))
			if err != nil {
				return err
			}

			for _, expected := range []string{
				"packages:",
				"source: testprovider",
				"parameters:",
				"- pkg",
			} {
				if !strings.Contains(string(project), expected) {
					return fmt.Errorf("Pulumi.yaml missing expected package metadata: %q", expected)
				}
			}

			if _, err := os.Stat(filepath.Join(info.Root, "sdks", "pkg", "pubspec.yaml")); err != nil {
				return fmt.Errorf("expected generated dart sdk at sdks/pkg/pubspec.yaml: %w", err)
			}
			generatedSDKPubspecPath := filepath.Join(info.Root, "sdks", "pkg", "pubspec.yaml")
			packageName, err := readPubspecPackageName(generatedSDKPubspecPath)
			if err != nil {
				return err
			}
			packageImport := fmt.Sprintf("package:%s/%s.dart", packageName, packageName)

			for _, sourceFile := range []string{
				filepath.Join(info.Root, "bin", "parameterized_dart.dart"),
				filepath.Join(info.Root, "test", "parameterized_test.dart"),
			} {
				content, err := os.ReadFile(sourceFile)
				if err != nil {
					return fmt.Errorf("failed to read parameterized fixture source %s: %w", sourceFile, err)
				}
				updated := strings.ReplaceAll(string(content), "package:pkg/pkg.dart", packageImport)
				if err := os.WriteFile(sourceFile, []byte(updated), 0o600); err != nil {
					return fmt.Errorf("failed to rewrite parameterized fixture source %s: %w", sourceFile, err)
				}
			}

			rootSDKPath := filepath.Join(info.Root, "sdks", "pkg", "lib", packageName+".dart")
			rootSDK, err := os.ReadFile(rootSDKPath)
			if err != nil {
				return fmt.Errorf("failed to read generated sdk root library: %w", err)
			}
			for _, expected := range []string{
				"import 'package:" + packageName + "/index.dart' as module_index;",
				"final index = const _IndexModuleNamespace();",
			} {
				if !strings.Contains(string(rootSDK), expected) {
					return fmt.Errorf("generated sdk root library missing %q: %s", expected, rootSDKPath)
				}
			}

			implSDKPath := filepath.Join(info.Root, "sdks", "pkg", "lib", "src", "index.dart")
			implSDK, err := os.ReadFile(implSDKPath)
			if err != nil {
				return fmt.Errorf("failed to read generated sdk implementation library: %w", err)
			}
			for _, expected := range []string{
				"export 'index/echo.dart';",
				"export 'index/random.dart';",
				"export 'index/functions.dart';",
				"export 'index/do_echo_args.dart';",
				"export 'index/do_echo_method_args.dart';",
				"export 'index/do_echo_method_result.dart';",
				"export 'index/do_echo_result.dart';",
			} {
				if !strings.Contains(string(implSDK), expected) {
					return fmt.Errorf("generated sdk implementation missing expected content %q: %s", expected, implSDKPath)
				}
			}

			echoResourcePath := filepath.Join(info.Root, "sdks", "pkg", "lib", "src", "index", "echo.dart")
			echoResource, err := os.ReadFile(echoResourcePath)
			if err != nil {
				return fmt.Errorf("failed to read generated echo resource: %w", err)
			}
			if !strings.Contains(string(echoResource), "class Echo extends pulumi.CustomResource") {
				return fmt.Errorf("generated echo resource missing class declaration: %s", echoResourcePath)
			}

			randomResourcePath := filepath.Join(info.Root, "sdks", "pkg", "lib", "src", "index", "random.dart")
			randomResource, err := os.ReadFile(randomResourcePath)
			if err != nil {
				return fmt.Errorf("failed to read generated random resource: %w", err)
			}
			if !strings.Contains(string(randomResource), "class Random extends pulumi.CustomResource") {
				return fmt.Errorf("generated random resource missing class declaration: %s", randomResourcePath)
			}

			invokePath := filepath.Join(info.Root, "sdks", "pkg", "lib", "src", "index", "functions.dart")
			invokeSource, err := os.ReadFile(invokePath)
			if err != nil {
				return fmt.Errorf("failed to read generated invoke source: %w", err)
			}
			if !strings.Contains(string(invokeSource), "Future<DoEchoResult> doEcho(") {
				return fmt.Errorf("generated invoke source missing expected function signature: %s", invokePath)
			}

			cmd = exec.Command("dart", "test")
			cmd.Dir = info.Root
			if out, err := cmd.CombinedOutput(); err != nil {
				return fmt.Errorf("running dart test failed: %w\n%s", err, string(out))
			}

			return nil
		},
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			assert.NotNil(t, stack.Outputs)
			assert.Equal(t, float64(42), stack.Outputs["echoA"])
			assert.Equal(t, "hello", stack.Outputs["echoInvoke"])
		},
	})
}

func readPubspecPackageName(path string) (string, error) {
	content, err := os.ReadFile(path)
	if err != nil {
		return "", fmt.Errorf("failed to read generated sdk pubspec: %w", err)
	}

	pubspec := struct {
		Name string `yaml:"name"`
	}{}
	if err := yaml.Unmarshal(content, &pubspec); err != nil {
		return "", fmt.Errorf("failed to parse generated sdk pubspec: %w", err)
	}

	name := strings.TrimSpace(pubspec.Name)
	if name == "" {
		return "", fmt.Errorf("generated sdk pubspec missing package name: %s", path)
	}

	return name, nil
}
