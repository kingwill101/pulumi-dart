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
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $2;

import 'callback.pb.dart' as $3;
import 'provider.pb.dart' as $1;
import 'resource.pb.dart' as $0;

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

  $grpc.ResponseFuture<$0.SupportsFeatureResponse> supportsFeature(
    $0.SupportsFeatureRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$supportsFeature, request, options: options);
  }

  $grpc.ResponseFuture<$1.InvokeResponse> invoke(
    $0.ResourceInvokeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$invoke, request, options: options);
  }

  $grpc.ResponseFuture<$1.CallResponse> call(
    $0.ResourceCallRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$call, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadResourceResponse> readResource(
    $0.ReadResourceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$readResource, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegisterResourceResponse> registerResource(
    $0.RegisterResourceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerResource, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> registerResourceOutputs(
    $0.RegisterResourceOutputsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerResourceOutputs, request,
        options: options);
  }

  /// Register a resource transform for the stack
  $grpc.ResponseFuture<$2.Empty> registerStackTransform(
    $3.Callback request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerStackTransform, request,
        options: options);
  }

  /// Register an invoke transform for the stack
  $grpc.ResponseFuture<$2.Empty> registerStackInvokeTransform(
    $3.Callback request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerStackInvokeTransform, request,
        options: options);
  }

  /// Register a resource hook that can be called by the engine during certain
  /// steps of a resource's lifecycle.
  $grpc.ResponseFuture<$2.Empty> registerResourceHook(
    $0.RegisterResourceHookRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerResourceHook, request, options: options);
  }

  /// Register an error hook that can be called by the engine when an operation fails and is retryable.
  ///
  /// Error hooks are a separate type of hook to other life cycle hooks as they have different inputs and outputs.
  $grpc.ResponseFuture<$2.Empty> registerErrorHook(
    $0.RegisterErrorHookRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$registerErrorHook, request, options: options);
  }

  /// Registers a package and allocates a packageRef. The same package can be registered multiple times in Pulumi.
  /// Multiple requests are idempotent and guaranteed to return the same result.
  $grpc.ResponseFuture<$0.RegisterPackageResponse> registerPackage(
    $0.RegisterPackageRequest request, {
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
  $grpc.ResponseFuture<$2.Empty> signalAndWaitForShutdown(
    $2.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$signalAndWaitForShutdown, request,
        options: options);
  }

  // method descriptors

  static final _$supportsFeature =
      $grpc.ClientMethod<$0.SupportsFeatureRequest, $0.SupportsFeatureResponse>(
          '/pulumirpc.ResourceMonitor/SupportsFeature',
          ($0.SupportsFeatureRequest value) => value.writeToBuffer(),
          $0.SupportsFeatureResponse.fromBuffer);
  static final _$invoke =
      $grpc.ClientMethod<$0.ResourceInvokeRequest, $1.InvokeResponse>(
          '/pulumirpc.ResourceMonitor/Invoke',
          ($0.ResourceInvokeRequest value) => value.writeToBuffer(),
          $1.InvokeResponse.fromBuffer);
  static final _$call =
      $grpc.ClientMethod<$0.ResourceCallRequest, $1.CallResponse>(
          '/pulumirpc.ResourceMonitor/Call',
          ($0.ResourceCallRequest value) => value.writeToBuffer(),
          $1.CallResponse.fromBuffer);
  static final _$readResource =
      $grpc.ClientMethod<$0.ReadResourceRequest, $0.ReadResourceResponse>(
          '/pulumirpc.ResourceMonitor/ReadResource',
          ($0.ReadResourceRequest value) => value.writeToBuffer(),
          $0.ReadResourceResponse.fromBuffer);
  static final _$registerResource = $grpc.ClientMethod<
          $0.RegisterResourceRequest, $0.RegisterResourceResponse>(
      '/pulumirpc.ResourceMonitor/RegisterResource',
      ($0.RegisterResourceRequest value) => value.writeToBuffer(),
      $0.RegisterResourceResponse.fromBuffer);
  static final _$registerResourceOutputs =
      $grpc.ClientMethod<$0.RegisterResourceOutputsRequest, $2.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterResourceOutputs',
          ($0.RegisterResourceOutputsRequest value) => value.writeToBuffer(),
          $2.Empty.fromBuffer);
  static final _$registerStackTransform =
      $grpc.ClientMethod<$3.Callback, $2.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterStackTransform',
          ($3.Callback value) => value.writeToBuffer(),
          $2.Empty.fromBuffer);
  static final _$registerStackInvokeTransform =
      $grpc.ClientMethod<$3.Callback, $2.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterStackInvokeTransform',
          ($3.Callback value) => value.writeToBuffer(),
          $2.Empty.fromBuffer);
  static final _$registerResourceHook =
      $grpc.ClientMethod<$0.RegisterResourceHookRequest, $2.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterResourceHook',
          ($0.RegisterResourceHookRequest value) => value.writeToBuffer(),
          $2.Empty.fromBuffer);
  static final _$registerErrorHook =
      $grpc.ClientMethod<$0.RegisterErrorHookRequest, $2.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterErrorHook',
          ($0.RegisterErrorHookRequest value) => value.writeToBuffer(),
          $2.Empty.fromBuffer);
  static final _$registerPackage =
      $grpc.ClientMethod<$0.RegisterPackageRequest, $0.RegisterPackageResponse>(
          '/pulumirpc.ResourceMonitor/RegisterPackage',
          ($0.RegisterPackageRequest value) => value.writeToBuffer(),
          $0.RegisterPackageResponse.fromBuffer);
  static final _$signalAndWaitForShutdown =
      $grpc.ClientMethod<$2.Empty, $2.Empty>(
          '/pulumirpc.ResourceMonitor/SignalAndWaitForShutdown',
          ($2.Empty value) => value.writeToBuffer(),
          $2.Empty.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.ResourceMonitor')
abstract class ResourceMonitorServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.ResourceMonitor';

  ResourceMonitorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SupportsFeatureRequest,
            $0.SupportsFeatureResponse>(
        'SupportsFeature',
        supportsFeature_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SupportsFeatureRequest.fromBuffer(value),
        ($0.SupportsFeatureResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResourceInvokeRequest, $1.InvokeResponse>(
        'Invoke',
        invoke_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ResourceInvokeRequest.fromBuffer(value),
        ($1.InvokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResourceCallRequest, $1.CallResponse>(
        'Call',
        call_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ResourceCallRequest.fromBuffer(value),
        ($1.CallResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ReadResourceRequest, $0.ReadResourceResponse>(
            'ReadResource',
            readResource_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ReadResourceRequest.fromBuffer(value),
            ($0.ReadResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterResourceRequest,
            $0.RegisterResourceResponse>(
        'RegisterResource',
        registerResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RegisterResourceRequest.fromBuffer(value),
        ($0.RegisterResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterResourceOutputsRequest, $2.Empty>(
        'RegisterResourceOutputs',
        registerResourceOutputs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RegisterResourceOutputsRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Callback, $2.Empty>(
        'RegisterStackTransform',
        registerStackTransform_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Callback.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Callback, $2.Empty>(
        'RegisterStackInvokeTransform',
        registerStackInvokeTransform_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Callback.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterResourceHookRequest, $2.Empty>(
        'RegisterResourceHook',
        registerResourceHook_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RegisterResourceHookRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterErrorHookRequest, $2.Empty>(
        'RegisterErrorHook',
        registerErrorHook_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RegisterErrorHookRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterPackageRequest,
            $0.RegisterPackageResponse>(
        'RegisterPackage',
        registerPackage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RegisterPackageRequest.fromBuffer(value),
        ($0.RegisterPackageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Empty, $2.Empty>(
        'SignalAndWaitForShutdown',
        signalAndWaitForShutdown_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.SupportsFeatureResponse> supportsFeature_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.SupportsFeatureRequest> $request) async {
    return supportsFeature($call, await $request);
  }

  $async.Future<$0.SupportsFeatureResponse> supportsFeature(
      $grpc.ServiceCall call, $0.SupportsFeatureRequest request);

  $async.Future<$1.InvokeResponse> invoke_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ResourceInvokeRequest> $request) async {
    return invoke($call, await $request);
  }

  $async.Future<$1.InvokeResponse> invoke(
      $grpc.ServiceCall call, $0.ResourceInvokeRequest request);

  $async.Future<$1.CallResponse> call_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ResourceCallRequest> $request) async {
    return call($call, await $request);
  }

  $async.Future<$1.CallResponse> call(
      $grpc.ServiceCall call, $0.ResourceCallRequest request);

  $async.Future<$0.ReadResourceResponse> readResource_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ReadResourceRequest> $request) async {
    return readResource($call, await $request);
  }

  $async.Future<$0.ReadResourceResponse> readResource(
      $grpc.ServiceCall call, $0.ReadResourceRequest request);

  $async.Future<$0.RegisterResourceResponse> registerResource_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.RegisterResourceRequest> $request) async {
    return registerResource($call, await $request);
  }

  $async.Future<$0.RegisterResourceResponse> registerResource(
      $grpc.ServiceCall call, $0.RegisterResourceRequest request);

  $async.Future<$2.Empty> registerResourceOutputs_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RegisterResourceOutputsRequest> $request) async {
    return registerResourceOutputs($call, await $request);
  }

  $async.Future<$2.Empty> registerResourceOutputs(
      $grpc.ServiceCall call, $0.RegisterResourceOutputsRequest request);

  $async.Future<$2.Empty> registerStackTransform_Pre(
      $grpc.ServiceCall $call, $async.Future<$3.Callback> $request) async {
    return registerStackTransform($call, await $request);
  }

  $async.Future<$2.Empty> registerStackTransform(
      $grpc.ServiceCall call, $3.Callback request);

  $async.Future<$2.Empty> registerStackInvokeTransform_Pre(
      $grpc.ServiceCall $call, $async.Future<$3.Callback> $request) async {
    return registerStackInvokeTransform($call, await $request);
  }

  $async.Future<$2.Empty> registerStackInvokeTransform(
      $grpc.ServiceCall call, $3.Callback request);

  $async.Future<$2.Empty> registerResourceHook_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RegisterResourceHookRequest> $request) async {
    return registerResourceHook($call, await $request);
  }

  $async.Future<$2.Empty> registerResourceHook(
      $grpc.ServiceCall call, $0.RegisterResourceHookRequest request);

  $async.Future<$2.Empty> registerErrorHook_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RegisterErrorHookRequest> $request) async {
    return registerErrorHook($call, await $request);
  }

  $async.Future<$2.Empty> registerErrorHook(
      $grpc.ServiceCall call, $0.RegisterErrorHookRequest request);

  $async.Future<$0.RegisterPackageResponse> registerPackage_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.RegisterPackageRequest> $request) async {
    return registerPackage($call, await $request);
  }

  $async.Future<$0.RegisterPackageResponse> registerPackage(
      $grpc.ServiceCall call, $0.RegisterPackageRequest request);

  $async.Future<$2.Empty> signalAndWaitForShutdown_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Empty> $request) async {
    return signalAndWaitForShutdown($call, await $request);
  }

  $async.Future<$2.Empty> signalAndWaitForShutdown(
      $grpc.ServiceCall call, $2.Empty request);
}
