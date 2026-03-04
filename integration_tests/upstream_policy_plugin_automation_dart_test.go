// Copyright 2026, Pulumi Corporation.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package integration_tests

import (
	"context"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	ptesting "github.com/pulumi/pulumi/sdk/v3/go/common/testing"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"gopkg.in/yaml.v3"
)

func rewritePolicyDependencies(projectDir string) (bool, error) {
	pubspecPath := filepath.Join(projectDir, "pubspec.yaml")
	data, err := os.ReadFile(pubspecPath)
	if err != nil {
		return false, fmt.Errorf("read pubspec.yaml: %w", err)
	}

	var pubspec map[string]interface{}
	if err := yaml.Unmarshal(data, &pubspec); err != nil {
		return false, fmt.Errorf("unmarshal pubspec.yaml: %w", err)
	}

	dependencies, ok := pubspec["dependencies"].(map[string]interface{})
	if !ok {
		dependencies = map[string]interface{}{}
		pubspec["dependencies"] = dependencies
	}

	delete(dependencies, "pulumi")
	delete(dependencies, "pulumi_policy")

	dependencyOverrides, ok := pubspec["dependency_overrides"].(map[string]interface{})
	if !ok {
		dependencyOverrides = map[string]interface{}{}
		pubspec["dependency_overrides"] = dependencyOverrides
	}

	delete(dependencyOverrides, "pulumi")
	delete(dependencyOverrides, "pulumi_policy")

	pulumiSdkPath, err := pulumiSDKPath()
	if err != nil {
		return false, fmt.Errorf("resolve pulumi-dart path: %w", err)
	}
	dependencies["pulumi"] = "^1.0.0"
	dependencyOverrides["pulumi"] = map[string]string{"path": pulumiSdkPath}
	dependencies["pulumi_policy"] = "^1.0.0"
	foundPolicySDK := false

	candidates := []string{
		"../packages/policy",
		"../policy",
		"../pulumi-policy",
		"../pulumi_policy",
	}
	for _, candidate := range candidates {
		policySdkPath, statErr := filepath.Abs(candidate)
		if statErr != nil {
			continue
		}
		if _, err := os.Stat(policySdkPath); err != nil {
			continue
		}
		dependencies["pulumi_policy"] = map[string]string{"path": policySdkPath}
		dependencyOverrides["pulumi_policy"] = map[string]string{"path": policySdkPath}
		foundPolicySDK = true
		break
	}

	updated, err := yaml.Marshal(pubspec)
	if err != nil {
		return false, fmt.Errorf("marshal updated pubspec.yaml: %w", err)
	}
	if err := os.WriteFile(pubspecPath, updated, 0o600); err != nil {
		return false, fmt.Errorf("write updated pubspec.yaml: %w", err)
	}
	return foundPolicySDK, nil
}

func rewritePubspecVersion(projectDir string, version string) error {
	pubspecPath := filepath.Join(projectDir, "pubspec.yaml")
	data, err := os.ReadFile(pubspecPath)
	if err != nil {
		return fmt.Errorf("read pubspec.yaml: %w", err)
	}

	var pubspec map[string]interface{}
	if err := yaml.Unmarshal(data, &pubspec); err != nil {
		return fmt.Errorf("unmarshal pubspec.yaml: %w", err)
	}

	pubspec["version"] = version

	updated, err := yaml.Marshal(pubspec)
	if err != nil {
		return fmt.Errorf("marshal updated pubspec.yaml: %w", err)
	}
	if err := os.WriteFile(pubspecPath, updated, 0o600); err != nil {
		return fmt.Errorf("write updated pubspec.yaml: %w", err)
	}

	return nil
}

func configurePolicyDartProject(t *testing.T, e *ptesting.Environment, policyPacks ...string) {
	t.Helper()

	languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
	require.NoError(t, err)
	t.Setenv("PATH", languagePluginPath+string(os.PathListSeparator)+os.Getenv("PATH"))

	e.ImportDirectory("policy_dart")
	e.RunCommand("pulumi", "login", "--cloud-url", e.LocalURL())
	e.RunCommand("pulumi", "stack", "init", "dev")

	pulumiSdkPath, err := pulumiSDKPath()
	require.NoError(t, err)
	require.NoError(t, rewritePulumiPathDependency(filepath.Join(e.CWD, "pubspec.yaml"), pulumiSdkPath))
	_, _, err = e.GetCommandResultsIn(e.CWD, "dart", "pub", "get")
	require.NoError(t, err)

	for _, pack := range policyPacks {
		packDir := filepath.Join(e.CWD, pack)
		foundPolicySDK, err := rewritePolicyDependencies(packDir)
		require.NoError(t, err)
		if !foundPolicySDK {
			t.Skip("skipping policy integration tests: local pulumi_policy SDK is unavailable")
		}
		_, _, err = e.GetCommandResultsIn(packDir, "dart", "pub", "get")
		require.NoError(t, err)
	}
}

func configurePolicyDartProjectService(
	t *testing.T,
	e *ptesting.Environment,
	org string,
	policyPacks ...string,
) string {
	t.Helper()

	languagePluginPath, err := filepath.Abs("../pulumi-language-dart")
	require.NoError(t, err)
	t.Setenv("PATH", languagePluginPath+string(os.PathListSeparator)+os.Getenv("PATH"))

	e.ImportDirectory("policy_dart")
	e.RunCommand("pulumi", "login")

	stackName := fmt.Sprintf("%s/policy_dart/dev-%d", org, time.Now().UnixNano())
	e.RunCommand("pulumi", "stack", "init", stackName)

	pulumiSdkPath, err := pulumiSDKPath()
	require.NoError(t, err)
	require.NoError(t, rewritePulumiPathDependency(filepath.Join(e.CWD, "pubspec.yaml"), pulumiSdkPath))
	_, _, err = e.GetCommandResultsIn(e.CWD, "dart", "pub", "get")
	require.NoError(t, err)

	for _, pack := range policyPacks {
		packDir := filepath.Join(e.CWD, pack)
		foundPolicySDK, err := rewritePolicyDependencies(packDir)
		require.NoError(t, err)
		if !foundPolicySDK {
			t.Skip("skipping policy integration tests: local pulumi_policy SDK is unavailable")
		}
		_, _, err = e.GetCommandResultsIn(packDir, "dart", "pub", "get")
		require.NoError(t, err)
	}

	return stackName
}

func cleanupPolicyStackByName(e *ptesting.Environment, stackName string) {
	_, _, _ = e.GetCommandResults("pulumi", "destroy", "--skip-preview", "--yes", "--stack", stackName)
	_, _, _ = e.GetCommandResults("pulumi", "stack", "rm", "--yes", "--stack", stackName)
}

func cleanupPolicyStack(e *ptesting.Environment) {
	_, _, _ = e.GetCommandResults("pulumi", "destroy", "--skip-preview", "--yes")
	_, _, _ = e.GetCommandResults("pulumi", "stack", "rm", "--yes")
}

func requireNoCommandError(t *testing.T, err error, stdout, stderr string) {
	t.Helper()
	if err != nil {
		t.Logf("command stdout = %s", stdout)
		t.Logf("command stderr = %s", stderr)
	}
	require.NoError(t, err)
}

func writePolicyPackConfig(t *testing.T, e *ptesting.Environment, name string, config map[string]any) string {
	t.Helper()
	path := filepath.Join(e.CWD, name+".json")

	data, err := json.Marshal(config)
	require.NoError(t, err)
	require.NoError(t, os.WriteFile(path, data, 0o600))

	return path
}

func TestAdvisoryPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "advisory_policy_pack")

	stdout, stderr, err := e.GetCommandResults("pulumi", "up", "--skip-preview", "--yes", "--policy-pack", "advisory_policy_pack")
	requireNoCommandError(t, err, stdout, stderr)
	assert.Contains(t, stdout, "Failing advisory policy pack for testing")
	assert.Contains(t, stdout, "foobar")
}

func TestMandatoryPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "mandatory_policy_pack")

	stdout, _, err := e.GetCommandResults("pulumi", "up", "--skip-preview", "--yes", "--policy-pack", "mandatory_policy_pack")
	require.Error(t, err)
	assert.Contains(t, stdout, "error: update failed")
	assert.Contains(t, stdout, "mandatory-policy-pack")
}

func TestMultiplePolicyPacksDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "advisory_policy_pack", "mandatory_policy_pack")

	stdout, _, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "advisory_policy_pack",
		"--policy-pack", "mandatory_policy_pack",
	)
	require.Error(t, err)
	assert.Contains(t, stdout, "Failing advisory policy pack for testing")
	assert.Contains(t, stdout, "error: update failed")
	assert.Contains(t, stdout, "advisory_policy_pack")
	assert.Contains(t, stdout, "mandatory_policy_pack")
}

func TestStackConfigPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "stack_config_policy_pack")

	testCases := []struct {
		name           string
		stackValue     string
		policyExpected string
		expectMessage  string
	}{
		{
			name:           "false-when-true-expected",
			stackValue:     "false",
			policyExpected: "true",
			expectMessage:  "Property was false",
		},
		{
			name:           "true-when-false-expected",
			stackValue:     "true",
			policyExpected: "false",
			expectMessage:  "Property was true",
		},
	}

	for _, tc := range testCases {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			e.RunCommand("pulumi", "config", "set", "value", tc.stackValue)
			e.RunCommand("pulumi", "config", "set", "policyExpected", tc.policyExpected)

			stdout, _, err := e.GetCommandResults(
				"pulumi", "up", "--skip-preview", "--yes",
				"--policy-pack", "stack_config_policy_pack",
			)
			require.Error(t, err)
			assert.Contains(t, stdout, "validate-stack-config-value")
			assert.Contains(t, stdout, tc.expectMessage)
		})
	}
}

func TestConfigSchemaPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "config_schema_policy_pack")
	e.RunCommand("pulumi", "config", "set", "value", "true")

	missingNames := writePolicyPackConfig(t, e, "config_schema_missing_names", map[string]any{
		"validator": map[string]any{
			"value": false,
		},
	})

	stdout, stderr, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "config_schema_policy_pack",
		"--policy-pack-config", missingNames,
	)
	require.Error(t, err)
	assert.Contains(t, stdout+stderr, "validating policy config")
	assert.Contains(t, stdout+stderr, "names")

	emptyNames := writePolicyPackConfig(t, e, "config_schema_empty_names", map[string]any{
		"validator": map[string]any{
			"value": false,
			"names": []string{},
		},
	})

	stdout, stderr, err = e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "config_schema_policy_pack",
		"--policy-pack-config", emptyNames,
	)
	require.Error(t, err)
	assert.Contains(t, stdout+stderr, "validating policy config")
	assert.Contains(t, stdout+stderr, "Array must have at least 1 items")

	validNoViolation := writePolicyPackConfig(t, e, "config_schema_valid_no_violation", map[string]any{
		"validator": map[string]any{
			"value": true,
			"names": []string{"other-resource"},
		},
	})

	stdout, stderr, err = e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "config_schema_policy_pack",
		"--policy-pack-config", validNoViolation,
	)
	requireNoCommandError(t, err, stdout, stderr)

	validViolation := writePolicyPackConfig(t, e, "config_schema_valid_violation", map[string]any{
		"validator": map[string]any{
			"value": false,
			"names": []string{"policy-target"},
		},
	})

	stdout, stderr, err = e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "config_schema_policy_pack",
		"--policy-pack-config", validViolation,
	)
	requireNoCommandError(t, err, stdout, stderr)
	assert.Contains(t, stdout, "validator")
	assert.Contains(t, stdout, "Property was true")
}

func TestDryRunPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "dryrun_policy_pack")
	e.RunCommand("pulumi", "config", "set", "value", "false")

	stdout, _, err := e.GetCommandResults(
		"pulumi", "preview", "--non-interactive",
		"--policy-pack", "dryrun_policy_pack",
	)
	require.Error(t, err)
	assert.Contains(t, stdout, "dryrun-policy-pack")
}

func TestStackTagsPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "stack_tags_policy_pack")
	e.RunCommand("pulumi", "stack", "tag", "set", "value", "hello")

	stdout, _, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "stack_tags_policy_pack",
	)
	require.Error(t, err)
	assert.Contains(t, stdout, "stack-tags-policy-pack")
	assert.Contains(t, stdout, "stack-tag=hello")
}

func TestRemediatePolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "remediate_policy_pack")

	t.Run("remediation-applies", func(t *testing.T) {
		e.RunCommand("pulumi", "config", "set", "value", "false")

		stdout, stderr, err := e.GetCommandResults(
			"pulumi", "up", "--skip-preview", "--yes",
			"--policy-pack", "remediate_policy_pack",
		)
		requireNoCommandError(t, err, stdout, stderr)
		assert.Contains(t, stdout, "remediate-policy-pack")
	})

	t.Run("no-remediation-needed", func(t *testing.T) {
		e.RunCommand("pulumi", "config", "set", "value", "true")

		stdout, stderr, err := e.GetCommandResults(
			"pulumi", "up", "--skip-preview", "--yes",
			"--policy-pack", "remediate_policy_pack",
		)
		requireNoCommandError(t, err, stdout, stderr)
	})

	t.Run("remediation-disabled-causes-validation-failure", func(t *testing.T) {
		e.RunCommand("pulumi", "config", "set", "value", "false")
		policyConfigDisabled := writePolicyPackConfig(t, e, "remediate_policy_pack_disabled", map[string]any{
			"remediate-policy-pack": "disabled",
		})

		stdout, _, err := e.GetCommandResults(
			"pulumi", "up", "--skip-preview", "--yes",
			"--policy-pack", "remediate_policy_pack",
			"--policy-pack-config", policyConfigDisabled,
		)
		require.Error(t, err)
		assert.Contains(t, stdout, "validate-remediated-value")
		assert.Contains(t, stdout, "value was not remediated")
	})
}

func TestConfigPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "config_policy_pack")
	e.RunCommand("pulumi", "config", "set", "value", "false")

	policyConfigTrue := writePolicyPackConfig(t, e, "config_policy_pack_true", map[string]any{
		"allowed": map[string]any{
			"value": true,
		},
	})

	stdout, _, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "config_policy_pack",
		"--policy-pack-config", policyConfigTrue,
	)
	require.Error(t, err)
	assert.Contains(t, stdout, "allowed")
	assert.Contains(t, stdout, "Property was false")

	policyConfigFalse := writePolicyPackConfig(t, e, "config_policy_pack_false", map[string]any{
		"allowed": map[string]any{
			"value": false,
		},
	})

	stdout, stderr, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "config_policy_pack",
		"--policy-pack-config", policyConfigFalse,
	)
	requireNoCommandError(t, err, stdout, stderr)
}

func TestEnforcementConfigPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "enforcement_config_policy_pack")
	e.RunCommand("pulumi", "config", "set", "value", "true")

	stdout, stderr, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "enforcement_config_policy_pack",
	)
	requireNoCommandError(t, err, stdout, stderr)
	assert.Contains(t, stdout, "advisory")
	assert.Contains(t, stdout, "Property was true")

	policyConfigMandatory := writePolicyPackConfig(t, e, "enforcement_config_policy_pack_mandatory", map[string]any{
		"false": map[string]any{
			"enforcementLevel": "mandatory",
		},
	})

	stdout, _, err = e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "enforcement_config_policy_pack",
		"--policy-pack-config", policyConfigMandatory,
	)
	require.Error(t, err)
	assert.Contains(t, stdout, "mandatory")
	assert.Contains(t, stdout, "Property was true")

	policyConfigDisabled := writePolicyPackConfig(t, e, "enforcement_config_policy_pack_disabled", map[string]any{
		"false": "disabled",
	})

	stdout, stderr, err = e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "enforcement_config_policy_pack",
		"--policy-pack-config", policyConfigDisabled,
	)
	requireNoCommandError(t, err, stdout, stderr)
	assert.NotContains(t, stdout, "Verifies property is false")
}

func TestInvalidPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "invalid_policy_pack")

	stdout, _, err := e.GetCommandResults(
		"pulumi", "preview", "--non-interactive",
		"--policy-pack", "invalid_policy_pack",
	)
	require.Error(t, err)
	assert.Contains(t, stdout, "invalid_policy_pack")
}

func TestSimplePolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "simple_policy_pack")
	e.RunCommand("pulumi", "config", "set", "value", "true")

	stdout, _, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "simple_policy_pack",
	)
	require.Error(t, err)
	assert.Contains(t, stdout, "truthiness")
	assert.Contains(t, stdout, "falsiness")
}

func TestPolicyPublishEnableDisableDart(t *testing.T) {
	if os.Getenv("PULUMI_ACCESS_TOKEN") == "" {
		t.Skip("requires Pulumi service access token for policy publish")
	}

	org := os.Getenv("PULUMI_TEST_ORG")
	if org == "" {
		org = os.Getenv("PULUMI_ORGANIZATION")
	}
	if org == "" {
		eProbe := ptesting.NewEnvironment(t)
		defer eProbe.DeleteIfNotFailed()

		configurePolicyDartProject(t, eProbe)
		stdout, stderr, err := eProbe.GetCommandResults("pulumi", "whoami")
		requireNoCommandError(t, err, stdout, stderr)
		org = strings.TrimSpace(stdout)
	}
	if org == "" {
		t.Skip("requires a resolvable Pulumi organization for policy publish")
	}

	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	stackName := configurePolicyDartProjectService(t, e, org, "mandatory_policy_pack")
	defer cleanupPolicyStackByName(e, stackName)

	packDir := filepath.Join(e.CWD, "mandatory_policy_pack")
	version := fmt.Sprintf("1.0.%d", time.Now().UnixNano())
	require.NoError(t, rewritePubspecVersion(packDir, version))
	_, _, err := e.GetCommandResultsIn(packDir, "dart", "pub", "get")
	require.NoError(t, err)

	stdout, stderr, err := e.GetCommandResultsIn(packDir, "pulumi", "policy", "publish", org)
	requireNoCommandError(t, err, stdout, stderr)

	policyRef := fmt.Sprintf("%s/%s", org, "mandatory_policy_pack")
	defer func() {
		_, _, _ = e.GetCommandResults("pulumi", "policy", "disable", policyRef, "--version", version)
		_, _, _ = e.GetCommandResults("pulumi", "policy", "rm", policyRef, version, "--yes")
	}()

	stdout, stderr, err = e.GetCommandResults("pulumi", "policy", "ls", "--json", org)
	requireNoCommandError(t, err, stdout, stderr)
	assert.Contains(t, stdout, "mandatory_policy_pack")
	assert.Contains(t, stdout, version)

	stdout, stderr, err = e.GetCommandResults("pulumi", "policy", "enable", policyRef, version)
	requireNoCommandError(t, err, stdout, stderr)

	stdout, _, err = e.GetCommandResults("pulumi", "up", "--skip-preview", "--yes")
	require.Error(t, err)
	assert.Contains(t, stdout, "mandatory-policy-pack")

	stdout, stderr, err = e.GetCommandResults("pulumi", "policy", "disable", policyRef, "--version", version)
	requireNoCommandError(t, err, stdout, stderr)

	stdout, stderr, err = e.GetCommandResults("pulumi", "up", "--skip-preview", "--yes")
	requireNoCommandError(t, err, stdout, stderr)
}

func TestPluginInstall(t *testing.T) {
	testCases := []struct {
		plugin string
		files  []string
		dirs   []string
		output string
	}{
		{
			plugin: "python-uv",
			dirs:   []string{".venv"},
			files:  []string{"uv.lock"},
			output: "hello from python-uv",
		},
		{
			plugin: "nodejs-pnpm",
			dirs:   []string{"node_modules"},
			files:  []string{"pnpm-lock.yaml"},
			output: "hello from nodejs-pnpm",
		},
	}

	for _, tc := range testCases {
		tc := tc
		t.Run(tc.plugin, func(t *testing.T) {
			e := ptesting.NewEnvironment(t)
			defer e.DeleteIfNotFailed()

			if tc.plugin == "nodejs-pnpm" {
				prefix := t.TempDir()
				cmd := exec.Command("npm", "install", "-g", "pnpm", "--prefix", prefix)
				if out, err := cmd.CombinedOutput(); err != nil {
					t.Fatalf("failed to install pnpm for test: %v\n%s", err, string(out))
				}
				t.Setenv("PATH", prefix+string(os.PathListSeparator)+filepath.Join(prefix, "bin")+string(os.PathListSeparator)+os.Getenv("PATH"))
			}

			pluginPath, err := filepath.Abs(filepath.Join("plugin_install", tc.plugin))
			require.NoError(t, err)

			stdout, stderr := e.RunCommand("pulumi", "plugin", "install", "tool", tc.plugin, "--file", pluginPath, "0.0.1")
			t.Logf("install stdout = %s", stdout)
			t.Logf("install stderr = %s", stderr)

			pluginDir := fmt.Sprintf("tool-%s-v0.0.1", tc.plugin)
			for _, d := range tc.dirs {
				require.DirExists(t, filepath.Join(e.HomePath, "plugins", pluginDir, d))
			}
			for _, f := range tc.files {
				require.FileExists(t, filepath.Join(e.HomePath, "plugins", pluginDir, f))
			}

			stdout, stderr = e.RunCommand("pulumi", "plugin", "run", tc.plugin, "--kind", "tool")
			require.Contains(t, stdout, tc.output, "stdout = %s, stderr = %s", stdout, stderr)
		})
	}
}

func TestAutomationAPIErrorInResource(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()

	e.ImportDirectory(filepath.Join("automation", "error"))
	e.RunCommand("pulumi", "login", "--cloud-url", e.LocalURL())

	_, _, err := e.GetCommandResultsIn(e.CWD, "npm", "install")
	require.NoError(t, err)

	ctx, cancel := context.WithTimeout(context.Background(), 3*time.Minute)
	defer cancel()

	cmd := e.SetupCommandIn(ctx, e.CWD, "node", "index.js")
	out, err := cmd.CombinedOutput()
	require.ErrorContains(t, err, "exit status 1")
	require.Contains(t, string(out), "error: Oops")
}
