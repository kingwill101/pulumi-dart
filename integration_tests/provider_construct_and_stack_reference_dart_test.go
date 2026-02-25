// Copyright 2016-2022, Pulumi Corporation.
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
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
)

func TestStackReferenceDart(t *testing.T) {
	testDartProgram(t, &integration.ProgramTestOptions{
		Dir:   "stack_reference",
		Quick: true,
	})
}

func TestProviderCallDart(t *testing.T) {
	const testDir = "provider_call"
	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    testProviderPath(),
			},
		},
		Dir:   filepath.Join(testDir, "dotnet"),
		Env:   []string{"TEST_VALUE=HelloWorld"},
		Quick: true,
	})
}

func TestProviderCallInvalidArgumentDart(t *testing.T) {
	const testDir = "provider_call"
	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    testProviderPath(),
			},
		},
		Dir:           filepath.Join(testDir, "dotnet"),
		Env:           []string{"TEST_VALUE="},
		ExpectFailure: true,
		Quick:         true,
	})
}

func TestProviderComponentHostDart(t *testing.T) {
	const testDir = "provider_component_host"
	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    testProviderPath(),
			},
		},
		Dir:   filepath.Join(testDir, "example"),
		Quick: true,
	})
}

func TestProviderConstructDart(t *testing.T) {
	const testDir = "provider_construct"
	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    testProviderPath(),
			},
		},
		Dir:   filepath.Join(testDir, "dotnet"),
		Quick: true,
	})
}

func TestProviderConstructDependenciesDart(t *testing.T) {
	const testDir = "provider_construct_dependencies"
	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    testProviderPath(),
			},
		},
		Dir:   filepath.Join(testDir, "dotnet"),
		Quick: true,
	})
}

func TestProviderConstructUnknownDart(t *testing.T) {
	const testDir = "provider_construct_unknown"
	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    testProviderPath(),
			},
		},
		Dir:   filepath.Join(testDir, "dotnet"),
		Quick: true,
	})
}

func TestProviderConstructResourceRefDart(t *testing.T) {
	const testDir = "provider_construct_resource_ref"
	testDartProgram(t, &integration.ProgramTestOptions{
		LocalProviders: []integration.LocalDependency{
			{
				Package: "testprovider",
				Path:    testProviderPath(),
			},
		},
		Dir:   filepath.Join(testDir, "dotnet"),
		Quick: true,
	})
}
