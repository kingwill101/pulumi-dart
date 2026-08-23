// This is a generated file - do not edit.
//
// Generated from pulumi/resource.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $0;

import 'callback.pb.dart' as $3;
import 'provider.pb.dart' as $2;
import 'resource.pb.dart' as $1;

export 'resource.pb.dart';

/// ResourceMonitor is the interface a source uses to talk back to the planning monitor orchestrating the execution.
@$pb.GrpcServiceName('pulumirpc.ResourceMonitor')
class ResourceMonitorClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ResourceMonitorClient(super.channel, {super.options, super.interceptors});

  /// GetDeploymentInfo returns the execution context associated with this monitor instance.
  ///
  /// This is an additive API intended to reduce duplicated state passed through
  /// environment variables and per-request protobuf fields. New clients should
  /// prefer this over piecemeal feature probing via SupportsFeature.
  ///
  /// Backward compatibility:
  /// - Older monitors may not implement this RPC and will return UNIMPLEMENTED.
  /// - Clients should fall back to existing request fields/env vars/SupportsFeature.
  $grpc.ResponseFuture<$1.DeploymentInfo> getDeploymentInfo(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getDeploymentInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.SupportsFeatureResponse> supportsFeature(
    $1.SupportsFeatureRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$supportsFeature, request, options: options);
  }

  $grpc.ResponseFuture<$1.ResourceInvokeResponse> invoke(
    $1.ResourceInvokeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$invoke, request, options: options);
  }

  $grpc.ResponseFuture<$2.CallResponse> call(
    $1.ResourceCallRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$call, request, options: options);
  }

  $grpc.ResponseFuture<$1.ReadResourceResponse> readResource(
    $1.ReadResourceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$readResource, request, options: options);
  }

  $grpc.ResponseFuture<$1.RegisterResourceResponse> registerResource(
    $1.RegisterResourceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerResource, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> registerResourceOutputs(
    $1.RegisterResourceOutputsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerResourceOutputs, request,
        options: options);
  }

  /// Register a resource transform for the stack
  $grpc.ResponseFuture<$0.Empty> registerStackTransform(
    $3.Callback request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerStackTransform, request,
        options: options);
  }

  /// Register an invoke transform for the stack
  $grpc.ResponseFuture<$0.Empty> registerStackInvokeTransform(
    $3.Callback request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerStackInvokeTransform, request,
        options: options);
  }

  /// Register a resource hook that can be called by the engine during certain
  /// steps of a resource's lifecycle.
  $grpc.ResponseFuture<$0.Empty> registerResourceHook(
    $1.RegisterResourceHookRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerResourceHook, request, options: options);
  }

  /// Register an error hook that can be called by the engine when an operation fails and is retryable.
  ///
  /// Error hooks are a separate type of hook to other life cycle hooks as they have different inputs and outputs.
  $grpc.ResponseFuture<$0.Empty> registerErrorHook(
    $1.RegisterErrorHookRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerErrorHook, request, options: options);
  }

  /// Registers a package and allocates a packageRef. The same package can be registered multiple times in Pulumi.
  /// Multiple requests are idempotent and guaranteed to return the same result.
  $grpc.ResponseFuture<$1.RegisterPackageResponse> registerPackage(
    $1.RegisterPackageRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerPackage, request, options: options);
  }

  /// SignalAndWaitForShutdown lets the resource monitor know that no more
  /// events will be generated. This call blocks until the resource monitor is
  /// finished, which will happen once all the steps have executed. This allows
  /// the language runtime to stay running and handle callback requests, even
  /// after the user program has completed. Runtime SDKs should call this after
  /// executing the user's program. This can only be called once.
  $grpc.ResponseFuture<$0.Empty> signalAndWaitForShutdown(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$signalAndWaitForShutdown, request,
        options: options);
  }

  // method descriptors

  static final _$getDeploymentInfo =
      $grpc.ClientMethod<$0.Empty, $1.DeploymentInfo>(
          '/pulumirpc.ResourceMonitor/GetDeploymentInfo',
          ($0.Empty value) => value.writeToBuffer(),
          $1.DeploymentInfo.fromBuffer);
  static final _$supportsFeature =
      $grpc.ClientMethod<$1.SupportsFeatureRequest, $1.SupportsFeatureResponse>(
          '/pulumirpc.ResourceMonitor/SupportsFeature',
          ($1.SupportsFeatureRequest value) => value.writeToBuffer(),
          $1.SupportsFeatureResponse.fromBuffer);
  static final _$invoke =
      $grpc.ClientMethod<$1.ResourceInvokeRequest, $1.ResourceInvokeResponse>(
          '/pulumirpc.ResourceMonitor/Invoke',
          ($1.ResourceInvokeRequest value) => value.writeToBuffer(),
          $1.ResourceInvokeResponse.fromBuffer);
  static final _$call =
      $grpc.ClientMethod<$1.ResourceCallRequest, $2.CallResponse>(
          '/pulumirpc.ResourceMonitor/Call',
          ($1.ResourceCallRequest value) => value.writeToBuffer(),
          $2.CallResponse.fromBuffer);
  static final _$readResource =
      $grpc.ClientMethod<$1.ReadResourceRequest, $1.ReadResourceResponse>(
          '/pulumirpc.ResourceMonitor/ReadResource',
          ($1.ReadResourceRequest value) => value.writeToBuffer(),
          $1.ReadResourceResponse.fromBuffer);
  static final _$registerResource = $grpc.ClientMethod<
          $1.RegisterResourceRequest, $1.RegisterResourceResponse>(
      '/pulumirpc.ResourceMonitor/RegisterResource',
      ($1.RegisterResourceRequest value) => value.writeToBuffer(),
      $1.RegisterResourceResponse.fromBuffer);
  static final _$registerResourceOutputs =
      $grpc.ClientMethod<$1.RegisterResourceOutputsRequest, $0.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterResourceOutputs',
          ($1.RegisterResourceOutputsRequest value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$registerStackTransform =
      $grpc.ClientMethod<$3.Callback, $0.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterStackTransform',
          ($3.Callback value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$registerStackInvokeTransform =
      $grpc.ClientMethod<$3.Callback, $0.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterStackInvokeTransform',
          ($3.Callback value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$registerResourceHook =
      $grpc.ClientMethod<$1.RegisterResourceHookRequest, $0.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterResourceHook',
          ($1.RegisterResourceHookRequest value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$registerErrorHook =
      $grpc.ClientMethod<$1.RegisterErrorHookRequest, $0.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterErrorHook',
          ($1.RegisterErrorHookRequest value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$registerPackage =
      $grpc.ClientMethod<$1.RegisterPackageRequest, $1.RegisterPackageResponse>(
          '/pulumirpc.ResourceMonitor/RegisterPackage',
          ($1.RegisterPackageRequest value) => value.writeToBuffer(),
          $1.RegisterPackageResponse.fromBuffer);
  static final _$signalAndWaitForShutdown =
      $grpc.ClientMethod<$0.Empty, $0.Empty>(
          '/pulumirpc.ResourceMonitor/SignalAndWaitForShutdown',
          ($0.Empty value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.ResourceMonitor')
abstract class ResourceMonitorServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.ResourceMonitor';

  ResourceMonitorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.DeploymentInfo>(
        'GetDeploymentInfo',
        getDeploymentInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.DeploymentInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SupportsFeatureRequest,
            $1.SupportsFeatureResponse>(
        'SupportsFeature',
        supportsFeature_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SupportsFeatureRequest.fromBuffer(value),
        ($1.SupportsFeatureResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ResourceInvokeRequest,
            $1.ResourceInvokeResponse>(
        'Invoke',
        invoke_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ResourceInvokeRequest.fromBuffer(value),
        ($1.ResourceInvokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ResourceCallRequest, $2.CallResponse>(
        'Call',
        call_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ResourceCallRequest.fromBuffer(value),
        ($2.CallResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ReadResourceRequest, $1.ReadResourceResponse>(
            'ReadResource',
            readResource_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ReadResourceRequest.fromBuffer(value),
            ($1.ReadResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegisterResourceRequest,
            $1.RegisterResourceResponse>(
        'RegisterResource',
        registerResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RegisterResourceRequest.fromBuffer(value),
        ($1.RegisterResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegisterResourceOutputsRequest, $0.Empty>(
        'RegisterResourceOutputs',
        registerResourceOutputs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RegisterResourceOutputsRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Callback, $0.Empty>(
        'RegisterStackTransform',
        registerStackTransform_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Callback.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Callback, $0.Empty>(
        'RegisterStackInvokeTransform',
        registerStackInvokeTransform_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Callback.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegisterResourceHookRequest, $0.Empty>(
        'RegisterResourceHook',
        registerResourceHook_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RegisterResourceHookRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegisterErrorHookRequest, $0.Empty>(
        'RegisterErrorHook',
        registerErrorHook_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RegisterErrorHookRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegisterPackageRequest,
            $1.RegisterPackageResponse>(
        'RegisterPackage',
        registerPackage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RegisterPackageRequest.fromBuffer(value),
        ($1.RegisterPackageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'SignalAndWaitForShutdown',
        signalAndWaitForShutdown_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.DeploymentInfo> getDeploymentInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getDeploymentInfo($call, await $request);
  }

  $async.Future<$1.DeploymentInfo> getDeploymentInfo(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$1.SupportsFeatureResponse> supportsFeature_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.SupportsFeatureRequest> $request) async {
    return supportsFeature($call, await $request);
  }

  $async.Future<$1.SupportsFeatureResponse> supportsFeature(
      $grpc.ServiceCall call, $1.SupportsFeatureRequest request);

  $async.Future<$1.ResourceInvokeResponse> invoke_Pre($grpc.ServiceCall $call,
      $async.Future<$1.ResourceInvokeRequest> $request) async {
    return invoke($call, await $request);
  }

  $async.Future<$1.ResourceInvokeResponse> invoke(
      $grpc.ServiceCall call, $1.ResourceInvokeRequest request);

  $async.Future<$2.CallResponse> call_Pre($grpc.ServiceCall $call,
      $async.Future<$1.ResourceCallRequest> $request) async {
    return call($call, await $request);
  }

  $async.Future<$2.CallResponse> call(
      $grpc.ServiceCall call, $1.ResourceCallRequest request);

  $async.Future<$1.ReadResourceResponse> readResource_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.ReadResourceRequest> $request) async {
    return readResource($call, await $request);
  }

  $async.Future<$1.ReadResourceResponse> readResource(
      $grpc.ServiceCall call, $1.ReadResourceRequest request);

  $async.Future<$1.RegisterResourceResponse> registerResource_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.RegisterResourceRequest> $request) async {
    return registerResource($call, await $request);
  }

  $async.Future<$1.RegisterResourceResponse> registerResource(
      $grpc.ServiceCall call, $1.RegisterResourceRequest request);

  $async.Future<$0.Empty> registerResourceOutputs_Pre($grpc.ServiceCall $call,
      $async.Future<$1.RegisterResourceOutputsRequest> $request) async {
    return registerResourceOutputs($call, await $request);
  }

  $async.Future<$0.Empty> registerResourceOutputs(
      $grpc.ServiceCall call, $1.RegisterResourceOutputsRequest request);

  $async.Future<$0.Empty> registerStackTransform_Pre(
      $grpc.ServiceCall $call, $async.Future<$3.Callback> $request) async {
    return registerStackTransform($call, await $request);
  }

  $async.Future<$0.Empty> registerStackTransform(
      $grpc.ServiceCall call, $3.Callback request);

  $async.Future<$0.Empty> registerStackInvokeTransform_Pre(
      $grpc.ServiceCall $call, $async.Future<$3.Callback> $request) async {
    return registerStackInvokeTransform($call, await $request);
  }

  $async.Future<$0.Empty> registerStackInvokeTransform(
      $grpc.ServiceCall call, $3.Callback request);

  $async.Future<$0.Empty> registerResourceHook_Pre($grpc.ServiceCall $call,
      $async.Future<$1.RegisterResourceHookRequest> $request) async {
    return registerResourceHook($call, await $request);
  }

  $async.Future<$0.Empty> registerResourceHook(
      $grpc.ServiceCall call, $1.RegisterResourceHookRequest request);

  $async.Future<$0.Empty> registerErrorHook_Pre($grpc.ServiceCall $call,
      $async.Future<$1.RegisterErrorHookRequest> $request) async {
    return registerErrorHook($call, await $request);
  }

  $async.Future<$0.Empty> registerErrorHook(
      $grpc.ServiceCall call, $1.RegisterErrorHookRequest request);

  $async.Future<$1.RegisterPackageResponse> registerPackage_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.RegisterPackageRequest> $request) async {
    return registerPackage($call, await $request);
  }

  $async.Future<$1.RegisterPackageResponse> registerPackage(
      $grpc.ServiceCall call, $1.RegisterPackageRequest request);

  $async.Future<$0.Empty> signalAndWaitForShutdown_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return signalAndWaitForShutdown($call, await $request);
  }

  $async.Future<$0.Empty> signalAndWaitForShutdown(
      $grpc.ServiceCall call, $0.Empty request);
}
