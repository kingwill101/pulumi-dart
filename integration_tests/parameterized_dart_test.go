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
)

func TestParameterizedDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir: filepath.Join("parameterized"),
		LocalProviders: []integration.LocalDependency{
			{Package: "testprovider", Path: testProviderPath()},
			{Package: "pkg", Path: testProviderPath()},
		},
		PostPrepareProject: func(info *engine.Projinfo) error {
			if len(info.Proj.Plugins.Providers) == 0 {
				return fmt.Errorf("expected at least one provider plugin")
			}

			languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
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
		},
	})
}
