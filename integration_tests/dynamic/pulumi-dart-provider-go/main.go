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
	providerName = "pulumi-dart"
	version      = "0.0.1"
)

type dynamicProvider struct {
	pulumirpc.UnimplementedResourceProviderServer
	id      int
	version string
}

func main() {
	err := provider.Main(providerName, func(host *provider.HostClient) (pulumirpc.ResourceProviderServer, error) {
		_ = host
		return &dynamicProvider{version: version}, nil
	})
	if err != nil {
		cmdutil.ExitError(err.Error())
	}
}

func (p *dynamicProvider) CheckConfig(
	ctx context.Context,
	req *pulumirpc.CheckRequest,
) (*pulumirpc.CheckResponse, error) {
	_ = ctx
	_ = req
	return &pulumirpc.CheckResponse{}, nil
}

func (p *dynamicProvider) DiffConfig(
	ctx context.Context,
	req *pulumirpc.DiffRequest,
) (*pulumirpc.DiffResponse, error) {
	_ = ctx
	_ = req
	return &pulumirpc.DiffResponse{}, nil
}

func (p *dynamicProvider) Configure(
	ctx context.Context,
	req *pulumirpc.ConfigureRequest,
) (*pulumirpc.ConfigureResponse, error) {
	_ = ctx
	_ = req
	return &pulumirpc.ConfigureResponse{
		AcceptSecrets:   true,
		SupportsPreview: true,
		AcceptResources: true,
	}, nil
}

func (p *dynamicProvider) Check(
	ctx context.Context,
	req *pulumirpc.CheckRequest,
) (*pulumirpc.CheckResponse, error) {
	_ = ctx
	return &pulumirpc.CheckResponse{Inputs: req.GetNews()}, nil
}

func (p *dynamicProvider) Diff(
	ctx context.Context,
	req *pulumirpc.DiffRequest,
) (*pulumirpc.DiffResponse, error) {
	_ = ctx
	oldValue := ""
	if old, ok := req.GetOlds().GetFields()["val"]; ok {
		oldValue = fmt.Sprint(old.AsInterface())
	}
	newValue := ""
	if next, ok := req.GetNews().GetFields()["val"]; ok {
		newValue = fmt.Sprint(next.AsInterface())
	}

	changes := pulumirpc.DiffResponse_DIFF_NONE
	if oldValue != newValue {
		changes = pulumirpc.DiffResponse_DIFF_SOME
	}

	return &pulumirpc.DiffResponse{Changes: changes}, nil
}

func (p *dynamicProvider) Create(
	ctx context.Context,
	req *pulumirpc.CreateRequest,
) (*pulumirpc.CreateResponse, error) {
	_ = ctx
	p.id++
	props := req.GetProperties()
	return &pulumirpc.CreateResponse{
		Id:         fmt.Sprintf("%d", p.id),
		Properties: props,
	}, nil
}

func (p *dynamicProvider) Update(
	ctx context.Context,
	req *pulumirpc.UpdateRequest,
) (*pulumirpc.UpdateResponse, error) {
	_ = ctx
	return &pulumirpc.UpdateResponse{Properties: req.GetNews()}, nil
}

func (p *dynamicProvider) Delete(ctx context.Context, req *pulumirpc.DeleteRequest) (*empty.Empty, error) {
	_ = ctx
	_ = req
	return &empty.Empty{}, nil
}

func (p *dynamicProvider) Read(
	ctx context.Context,
	req *pulumirpc.ReadRequest,
) (*pulumirpc.ReadResponse, error) {
	_ = ctx
	return &pulumirpc.ReadResponse{
		Id:         req.GetId(),
		Properties: req.GetProperties(),
		Inputs:     req.GetProperties(),
	}, nil
}

func (p *dynamicProvider) GetPluginInfo(ctx context.Context, req *empty.Empty) (*pulumirpc.PluginInfo, error) {
	_ = ctx
	_ = req
	return &pulumirpc.PluginInfo{Version: p.version}, nil
}

func (p *dynamicProvider) Attach(ctx context.Context, req *pulumirpc.PluginAttach) (*empty.Empty, error) {
	_ = ctx
	_ = req
	return &empty.Empty{}, nil
}

func (p *dynamicProvider) GetSchema(ctx context.Context, req *pulumirpc.GetSchemaRequest) (*pulumirpc.GetSchemaResponse, error) {
	_ = ctx
	_ = req
	return &pulumirpc.GetSchemaResponse{}, nil
}

func (p *dynamicProvider) Cancel(ctx context.Context, req *empty.Empty) (*empty.Empty, error) {
	_ = ctx
	_ = req
	return &empty.Empty{}, nil
}
