// Copyright 2025, Pulumi Corporation.
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
	"path/filepath"
	"strings"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/stretchr/testify/require"
)

func TestDartCustomResourceHooks(t *testing.T) {
	testDir := "custom_resource_hooks"

	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    filepath.Join(testDir, "testprovider-go"),
			},
		},
		Quick: true,
		Dir:   filepath.Join(testDir, "step1-create"),
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			requirePrintedDart(t, stack, "info", "BeforeCreate: value is step1")
			requirePrintedDart(t, stack, "info", "AfterCreate: value is step1")
			requirePrintedDart(t, stack, "info", "BeforeCreate: secret is secret")
			requirePrintedDart(t, stack, "info", "BeforeCreate: secret is hello secret")
		},
		EditDirs: []integration.EditDir{
			{
				Dir:      filepath.Join(testDir, "step2-update"),
				Additive: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					requirePrintedDart(t, stack, "info", "BeforeUpdate: value was step1, is step2")
					requirePrintedDart(t, stack, "info", "AfterUpdate: value was step1, is step2")
				},
			},
			{
				Dir:      filepath.Join(testDir, "step3-delete"),
				Additive: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					requirePrintedDart(t, stack, "info", "BeforeDelete: value was step2")
					requirePrintedDart(t, stack, "info", "AfterDelete: value was step2")
				},
			},
			{
				Dir:           filepath.Join(testDir, "step4-fail-before"),
				Additive:      true,
				ExpectFailure: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					requirePrintedDart(t, stack, "error", "BeforeCreate hook failed")
					requireNoResourceWithNameDart(t, stack, "updatable")
					requireNotPrintedDart(t, stack, "AfterCreate: value is step4")
				},
			},
			{
				Dir:      filepath.Join(testDir, "step5-fail-after"),
				Additive: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					requirePrintedDart(t, stack, "info", "BeforeCreate: value is step5")
					requireResourceWithNameDart(t, stack, "updatable")
					requirePrintedDart(t, stack, "warning", "AfterCreate hook failed")
				},
			},
			{
				Dir:      filepath.Join(testDir, "step6-empty"),
				Additive: true,
			},
		},
	})
}

func TestDartComponentResourceHooks(t *testing.T) {
	testDir := "component_resource_hooks"

	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testcomponent",
				Path:    filepath.Join(testDir, "testcomponent-go"),
			},
		},
		Quick: true,
		Dir:   filepath.Join(testDir, "step1-create"),
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			requirePrintedDart(t, stack, "info", "BeforeCreate was called")
			requirePrintedDart(t, stack, "info", "AfterCreate was called")
		},
		EditDirs: []integration.EditDir{
			{
				Dir:      filepath.Join(testDir, "step2-update"),
				Additive: true,
			},
			{
				Dir:      filepath.Join(testDir, "step3-delete"),
				Additive: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					requirePrintedDart(t, stack, "info", "BeforeDelete was called")
					requirePrintedDart(t, stack, "info", "AfterDelete was called")
				},
			},
			{
				Dir:           filepath.Join(testDir, "step4-fail-before"),
				Additive:      true,
				ExpectFailure: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					requirePrintedDart(t, stack, "error", "BeforeCreate hook failed")
					requireNoResourceWithNameDart(t, stack, "component")
					requireNotPrintedDart(t, stack, "AfterCreate was called")
				},
			},
			{
				Dir:      filepath.Join(testDir, "step5-fail-after"),
				Additive: true,
				ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
					requirePrintedDart(t, stack, "info", "BeforeCreate was called")
					requireResourceWithNameDart(t, stack, "component")
					requirePrintedDart(t, stack, "warning", "AfterCreate hook failed")
				},
			},
			{
				Dir:      filepath.Join(testDir, "step6-empty"),
				Additive: true,
			},
		},
	})
}

func TestDartTransformResourceHooks(t *testing.T) {
	testDir := "transform_resource_hooks"

	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    testProviderPath(),
			},
		},
		Quick: true,
		Dir:   testDir,
		ExtraRuntimeValidation: func(t *testing.T, stack integration.RuntimeValidationStackInfo) {
			requirePrintedDart(t, stack, "info", "Hook was called with length = 10")
		},
	})
}

func requirePrintedDart(
	t *testing.T,
	stack integration.RuntimeValidationStackInfo,
	severity string,
	text string,
) {
	found := false
	for _, event := range stack.Events {
		if event.DiagnosticEvent != nil &&
			event.DiagnosticEvent.Severity == severity && strings.Contains(event.DiagnosticEvent.Message, text) {
			found = true
			break
		}
	}
	require.True(t, found, "Expected to find printed message: %s", text)
}

func requireNotPrintedDart(t *testing.T, stack integration.RuntimeValidationStackInfo, text string) {
	found := false
	for _, event := range stack.Events {
		if event.DiagnosticEvent != nil && strings.Contains(event.DiagnosticEvent.Message, text) {
			found = true
			break
		}
	}
	require.False(t, found, "Did not expect to find printed message: %s", text)
}

func requireResourceWithNameDart(t *testing.T, stack integration.RuntimeValidationStackInfo, name string) {
	found := false
	for _, res := range stack.Deployment.Resources {
		if res.URN.Name() == name {
			found = true
			break
		}
	}
	require.True(t, found, "Expected to find resource with name %s", name)
}

func requireNoResourceWithNameDart(t *testing.T, stack integration.RuntimeValidationStackInfo, name string) {
	for _, res := range stack.Deployment.Resources {
		if res.URN.Name() == name {
			t.Errorf("Expected no resource with name %s, but found: %v", name, res)
		}
	}
}
