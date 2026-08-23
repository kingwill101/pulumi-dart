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
//go:build !all

package main

import (
	"context"
	"strconv"
	"sync"

	"github.com/pulumi/pulumi/pkg/v3/resource/provider"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/cmdutil"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/rpcutil/rpcerror"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"google.golang.org/grpc/codes"
	"google.golang.org/protobuf/types/known/emptypb"
)

type flakyCreateProvider struct {
	pulumirpc.UnimplementedResourceProviderServer
	mu             sync.Mutex
	id             int
	createAttempts int
}

func main() {
	err := provider.Main("testprovider", func(*provider.HostClient) (pulumirpc.ResourceProviderServer, error) {
		return &flakyCreateProvider{}, nil
	})
	if err != nil {
		cmdutil.ExitError(err.Error())
	}
}

func (p *flakyCreateProvider) Check(
	_ context.Context, req *pulumirpc.CheckRequest,
) (*pulumirpc.CheckResponse, error) {
	return &pulumirpc.CheckResponse{Inputs: req.GetNews()}, nil
}

func (*flakyCreateProvider) CheckConfig(
	_ context.Context, req *pulumirpc.CheckRequest,
) (*pulumirpc.CheckResponse, error) {
	return &pulumirpc.CheckResponse{Inputs: req.GetNews()}, nil
}

func (*flakyCreateProvider) Configure(
	context.Context, *pulumirpc.ConfigureRequest,
) (*pulumirpc.ConfigureResponse, error) {
	return &pulumirpc.ConfigureResponse{
		AcceptSecrets:   true,
		SupportsPreview: true,
		AcceptResources: true,
	}, nil
}

func (p *flakyCreateProvider) Create(
	_ context.Context, _ *pulumirpc.CreateRequest,
) (*pulumirpc.CreateResponse, error) {
	p.mu.Lock()
	defer p.mu.Unlock()

	p.id++
	id := strconv.Itoa(p.id)
	p.createAttempts++
	if p.createAttempts == 1 {
		reasons := []string{"Create failed once for the FlakyCreate resource"}
		detail := &pulumirpc.ErrorResourceInitFailed{Id: id, Reasons: reasons}
		return nil, rpcerror.WithDetails(rpcerror.New(codes.Unknown, reasons[0]), detail)
	}
	return &pulumirpc.CreateResponse{Id: id}, nil
}

func (*flakyCreateProvider) Diff(
	context.Context, *pulumirpc.DiffRequest,
) (*pulumirpc.DiffResponse, error) {
	return &pulumirpc.DiffResponse{Changes: pulumirpc.DiffResponse_DIFF_NONE}, nil
}

func (*flakyCreateProvider) Delete(
	context.Context, *pulumirpc.DeleteRequest,
) (*emptypb.Empty, error) {
	return &emptypb.Empty{}, nil
}

func (*flakyCreateProvider) Read(
	_ context.Context, req *pulumirpc.ReadRequest,
) (*pulumirpc.ReadResponse, error) {
	return &pulumirpc.ReadResponse{
		Id:         req.GetId(),
		Properties: req.GetProperties(),
	}, nil
}

func (*flakyCreateProvider) GetPluginInfo(
	context.Context, *emptypb.Empty,
) (*pulumirpc.PluginInfo, error) {
	return &pulumirpc.PluginInfo{Version: "0.0.1"}, nil
}
