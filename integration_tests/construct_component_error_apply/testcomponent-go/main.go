// Copyright 2016-2026, Pulumi Corporation.
//go:build !all
// +build !all

package main

import (
	"errors"
	"fmt"

	"github.com/pulumi/pulumi/pkg/v3/resource/provider"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/cmdutil"
	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
	pulumiprovider "github.com/pulumi/pulumi/sdk/v3/go/pulumi/provider"
)

const (
	providerName = "testcomponent"
	version      = "0.0.1"
)

type Component struct {
	pulumi.ResourceState

	Foo pulumi.StringOutput `pulumi:"foo"`
}

func newComponent(ctx *pulumi.Context, name string, foo pulumi.StringOutput,
	opts ...pulumi.ResourceOption,
) (*Component, error) {
	component := &Component{}
	if err := ctx.RegisterComponentResource("testcomponent:index:Component", name, component, opts...); err != nil {
		return nil, err
	}
	component.Foo = foo

	if err := ctx.RegisterResourceOutputs(component, pulumi.Map{
		"foo": component.Foo,
	}); err != nil {
		return nil, err
	}

	return component, nil
}

func construct(ctx *pulumi.Context, typ, name string, inputs pulumiprovider.ConstructInputs,
	options pulumi.ResourceOption,
) (*pulumiprovider.ConstructResult, error) {
	if typ != "testcomponent:index:Component" {
		return nil, fmt.Errorf("unknown resource type %s", typ)
	}

	// Mirror upstream behavior: fail from inside an apply rather than directly from construct.
	failingFoo := pulumi.String("").ToStringOutput().ApplyT(func(string) (string, error) {
		return "", errors.New("intentional error from within an apply")
	}).(pulumi.StringOutput)

	component, err := newComponent(ctx, name, failingFoo, options)
	if err != nil {
		return nil, fmt.Errorf("creating component: %w", err)
	}

	return pulumiprovider.NewConstructResult(component)
}

func main() {
	if err := provider.MainWithOptions(provider.Options{
		Name:      providerName,
		Version:   version,
		Construct: construct,
	}); err != nil {
		cmdutil.ExitError(err.Error())
	}
}
