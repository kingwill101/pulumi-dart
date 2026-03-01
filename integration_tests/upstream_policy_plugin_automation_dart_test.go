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
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"testing"
	"time"

	ptesting "github.com/pulumi/pulumi/sdk/v3/go/common/testing"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"gopkg.in/yaml.v3"
)

func rewritePulumiDependency(projectDir string) error {
	pubspecPath := filepath.Join(projectDir, "pubspec.yaml")
	data, err := os.ReadFile(pubspecPath)
	if err != nil {
		return fmt.Errorf("read pubspec.yaml: %w", err)
	}

	var pubspec map[string]interface{}
	if err := yaml.Unmarshal(data, &pubspec); err != nil {
		return fmt.Errorf("unmarshal pubspec.yaml: %w", err)
	}

	dependencies, ok := pubspec["dependencies"].(map[string]interface{})
	if !ok {
		dependencies = map[string]interface{}{}
		pubspec["dependencies"] = dependencies
	}
	delete(dependencies, "pulumi")

	pulumiSdkPath, err := filepath.Abs("../pulumi-dart")
	if err != nil {
		return fmt.Errorf("resolve pulumi-dart path: %w", err)
	}
	dependencies["pulumi"] = map[string]string{"path": pulumiSdkPath}

	updated, err := yaml.Marshal(pubspec)
	if err != nil {
		return fmt.Errorf("marshal updated pubspec.yaml: %w", err)
	}
	if err := os.WriteFile(pubspecPath, updated, 0o600); err != nil {
		return fmt.Errorf("write updated pubspec.yaml: %w", err)
	}
	return nil
}

func rewritePolicyDependencies(projectDir string) error {
	pubspecPath := filepath.Join(projectDir, "pubspec.yaml")
	data, err := os.ReadFile(pubspecPath)
	if err != nil {
		return fmt.Errorf("read pubspec.yaml: %w", err)
	}

	var pubspec map[string]interface{}
	if err := yaml.Unmarshal(data, &pubspec); err != nil {
		return fmt.Errorf("unmarshal pubspec.yaml: %w", err)
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

	pulumiSdkPath, err := filepath.Abs("../pulumi-dart")
	if err != nil {
		return fmt.Errorf("resolve pulumi-dart path: %w", err)
	}
	policySdkPath, err := filepath.Abs("../packages/policy")
	if err != nil {
		return fmt.Errorf("resolve pulumi_policy path: %w", err)
	}

	dependencies["pulumi_policy"] = map[string]string{"path": policySdkPath}
	dependencies["pulumi"] = "^1.0.0"
	dependencyOverrides["pulumi"] = map[string]string{"path": pulumiSdkPath}

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

	require.NoError(t, rewritePulumiDependency(e.CWD))
	_, _, err = e.GetCommandResultsIn(e.CWD, "dart", "pub", "get")
	require.NoError(t, err)

	for _, pack := range policyPacks {
		packDir := filepath.Join(e.CWD, pack)
		require.NoError(t, rewritePolicyDependencies(packDir))
		_, _, err = e.GetCommandResultsIn(packDir, "dart", "pub", "get")
		require.NoError(t, err)
	}
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
	e.RunCommand("pulumi", "config", "set", "value", "false")
	e.RunCommand("pulumi", "config", "set", "policyExpected", "true")

	stdout, _, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "stack_config_policy_pack",
	)
	require.Error(t, err)
	assert.Contains(t, stdout, "validate-stack-config-value")
	assert.Contains(t, stdout, "Property was false")
}

func TestConfigSchemaPolicyPackDart(t *testing.T) {
	e := ptesting.NewEnvironment(t)
	defer e.DeleteIfNotFailed()
	defer cleanupPolicyStack(e)

	configurePolicyDartProject(t, e, "config_schema_policy_pack")
	e.RunCommand("pulumi", "config", "set", "value", "false")

	stdout, _, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "config_schema_policy_pack",
	)
	require.Error(t, err)
	assert.Contains(t, stdout, "validator")
	assert.Contains(t, stdout, "Property was")
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
	e.RunCommand("pulumi", "config", "set", "value", "false")

	stdout, stderr, err := e.GetCommandResults(
		"pulumi", "up", "--skip-preview", "--yes",
		"--policy-pack", "remediate_policy_pack",
	)
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
