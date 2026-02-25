// Copyright 2026, Pulumi Corporation.  All rights reserved.
//go:build !all
// +build !all

package main

import (
	"context"
	"fmt"

	"github.com/golang/protobuf/ptypes/empty"
	"github.com/pulumi/pulumi/pkg/v3/resource/provider"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/cmdutil"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
)

const (
	providerName = "testprovider"
	version      = "0.0.1"
)

type updatableProvider struct {
	pulumirpc.UnimplementedResourceProviderServer
	id      int
	version string
}

func main() {
	err := provider.Main(providerName, func(host *provider.HostClient) (pulumirpc.ResourceProviderServer, error) {
		_ = host
		return &updatableProvider{version: version}, nil
	})
	if err != nil {
		cmdutil.ExitError(err.Error())
	}
}

func (p *updatableProvider) CheckConfig(ctx context.Context,
	req *pulumirpc.CheckRequest,
) (*pulumirpc.CheckResponse, error) {
	return &pulumirpc.CheckResponse{Inputs: req.GetNews()}, nil
}

func (p *updatableProvider) DiffConfig(ctx context.Context,
	req *pulumirpc.DiffRequest,
) (*pulumirpc.DiffResponse, error) {
	return &pulumirpc.DiffResponse{}, nil
}

func (p *updatableProvider) Configure(ctx context.Context,
	req *pulumirpc.ConfigureRequest,
) (*pulumirpc.ConfigureResponse, error) {
	_ = req
	return &pulumirpc.ConfigureResponse{
		AcceptSecrets:   true,
		SupportsPreview: true,
		AcceptResources: true,
	}, nil
}

func (p *updatableProvider) Check(ctx context.Context,
	req *pulumirpc.CheckRequest,
) (*pulumirpc.CheckResponse, error) {
	_ = ctx
	return &pulumirpc.CheckResponse{Inputs: req.GetNews(), Failures: nil}, nil
}

func (p *updatableProvider) Diff(ctx context.Context,
	req *pulumirpc.DiffRequest,
) (*pulumirpc.DiffResponse, error) {
	_ = ctx

	oldValue := ""
	if old, ok := req.GetOlds().GetFields()["value"]; ok {
		oldValue = fmt.Sprint(old.AsInterface())
	}

	newValue := ""
	if newInput, ok := req.GetNews().GetFields()["value"]; ok {
		newValue = fmt.Sprint(newInput.AsInterface())
	}

	changes := pulumirpc.DiffResponse_DIFF_NONE
	if oldValue != newValue {
		changes = pulumirpc.DiffResponse_DIFF_SOME
	}

	return &pulumirpc.DiffResponse{Changes: changes}, nil
}

func (p *updatableProvider) Create(ctx context.Context,
	req *pulumirpc.CreateRequest,
) (*pulumirpc.CreateResponse, error) {
	_ = ctx
	p.id++
	return &pulumirpc.CreateResponse{
		Id:         fmt.Sprintf("%d", p.id),
		Properties: req.GetProperties(),
	}, nil
}

func (p *updatableProvider) Update(ctx context.Context,
	req *pulumirpc.UpdateRequest,
) (*pulumirpc.UpdateResponse, error) {
	_ = ctx
	return &pulumirpc.UpdateResponse{Properties: req.GetNews()}, nil
}

func (p *updatableProvider) Delete(ctx context.Context,
	req *pulumirpc.DeleteRequest,
) (*empty.Empty, error) {
	_ = ctx
	_ = req
	return &empty.Empty{}, nil
}

func (p *updatableProvider) Read(ctx context.Context,
	req *pulumirpc.ReadRequest,
) (*pulumirpc.ReadResponse, error) {
	_ = ctx
	return &pulumirpc.ReadResponse{
		Id:         req.GetId(),
		Properties: req.GetProperties(),
	}, nil
}

func (p *updatableProvider) GetPluginInfo(context.Context, *empty.Empty) (*pulumirpc.PluginInfo, error) {
	return &pulumirpc.PluginInfo{
		Version: p.version,
	}, nil
}

func (p *updatableProvider) Attach(context.Context, *pulumirpc.PluginAttach) (*empty.Empty, error) {
	return &empty.Empty{}, nil
}

func (p *updatableProvider) GetSchema(context.Context, *pulumirpc.GetSchemaRequest) (*pulumirpc.GetSchemaResponse, error) {
	return &pulumirpc.GetSchemaResponse{}, nil
}

func (p *updatableProvider) Cancel(context.Context, *empty.Empty) (*empty.Empty, error) {
	return &empty.Empty{}, nil
}
