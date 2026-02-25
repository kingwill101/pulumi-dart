// Copyright 2016-2026, Pulumi Corporation.
//go:build !all
// +build !all

package main

import (
	"fmt"
	"time"

	"github.com/blang/semver"
	"github.com/pulumi/pulumi/pkg/v3/resource/provider"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/cmdutil"
	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
	pulumiprovider "github.com/pulumi/pulumi/sdk/v3/go/pulumi/provider"
)

const (
	providerName = "testcomponent"
	version      = "0.0.1"
)

// Component has a child resource that is intentionally delayed before registration.
type Component struct {
	pulumi.ResourceState
}

type module struct {
	version semver.Version
}

func (m *module) Version() semver.Version {
	return m.version
}

func (m *module) Construct(ctx *pulumi.Context, name, typ, urn string) (pulumi.Resource, error) {
	if typ != "testcomponent:index:Component" {
		return nil, fmt.Errorf("unknown resource type: %s", typ)
	}

	resource := &Component{}
	if err := ctx.RegisterResource(typ, name, nil, resource, pulumi.URN_(urn)); err != nil {
		return nil, err
	}

	return resource, nil
}

func construct(ctx *pulumi.Context, typ, name string, inputs pulumiprovider.ConstructInputs,
	options pulumi.ResourceOption,
) (*pulumiprovider.ConstructResult, error) {
	if typ != "testcomponent:index:Component" {
		return nil, fmt.Errorf("unknown resource type %s", typ)
	}

	component := &Component{}
	if err := ctx.RegisterComponentResource(typ, name, component, options); err != nil {
		return nil, fmt.Errorf("registering component: %w", err)
	}

	// Simulate a slow child creation to ensure child registration is still observed.
	time.Sleep(15 * time.Second)

	child := &Component{}
	if err := ctx.RegisterComponentResource(
		"testcomponent:index:SlowChild",
		fmt.Sprintf("child-%s", name),
		child,
		pulumi.Parent(component),
	); err != nil {
		return nil, fmt.Errorf("registering slow child: %w", err)
	}

	if err := ctx.RegisterResourceOutputs(component, pulumi.Map{}); err != nil {
		return nil, fmt.Errorf("registering component outputs: %w", err)
	}
	if err := ctx.RegisterResourceOutputs(child, pulumi.Map{}); err != nil {
		return nil, fmt.Errorf("registering child outputs: %w", err)
	}

	return pulumiprovider.NewConstructResult(component)
}

func main() {
	pulumi.RegisterResourceModule(providerName, "index", &module{semver.MustParse(version)})

	if err := provider.MainWithOptions(provider.Options{
		Name:      providerName,
		Version:   version,
		Construct: construct,
	}); err != nil {
		cmdutil.ExitError(err.Error())
	}
}
