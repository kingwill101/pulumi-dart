// This is a generated file - do not edit.
//
// Generated from pulumi/engine.proto.

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
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $1;

import 'engine.pb.dart' as $0;

export 'engine.pb.dart';

/// Engine is an auxiliary service offered to language and resource provider plugins. Its main purpose today is
/// to serve as a common logging endpoint, but it also serves as a state storage mechanism for language hosts
/// that can't store their own global state.
@$pb.GrpcServiceName('pulumirpc.Engine')
class EngineClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  EngineClient(super.channel, {super.options, super.interceptors});

  /// Log logs a global message in the engine, including errors and warnings.
  $grpc.ResponseFuture<$1.Empty> log(
    $0.LogRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$log, request, options: options);
  }

  /// GetRootResource gets the URN of the root resource, the resource that should be the root of all
  /// otherwise-unparented resources.
  $grpc.ResponseFuture<$0.GetRootResourceResponse> getRootResource(
    $0.GetRootResourceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getRootResource, request, options: options);
  }

  /// SetRootResource sets the URN of the root resource.
  $grpc.ResponseFuture<$0.SetRootResourceResponse> setRootResource(
    $0.SetRootResourceRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$setRootResource, request, options: options);
  }

  /// StartDebugging indicates to the engine that the program has started under a debugger, and the engine
  /// should notify the user of how to connect to the debugger.
  $grpc.ResponseFuture<$1.Empty> startDebugging(
    $0.StartDebuggingRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$startDebugging, request, options: options);
  }

  /// RequirePulumiVersion checks that the version of the engine satisfies the passed in range.
  $grpc.ResponseFuture<$0.RequirePulumiVersionResponse> requirePulumiVersion(
    $0.RequirePulumiVersionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$requirePulumiVersion, request, options: options);
  }

  // method descriptors

  static final _$log = $grpc.ClientMethod<$0.LogRequest, $1.Empty>(
      '/pulumirpc.Engine/Log',
      ($0.LogRequest value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
  static final _$getRootResource =
      $grpc.ClientMethod<$0.GetRootResourceRequest, $0.GetRootResourceResponse>(
          '/pulumirpc.Engine/GetRootResource',
          ($0.GetRootResourceRequest value) => value.writeToBuffer(),
          $0.GetRootResourceResponse.fromBuffer);
  static final _$setRootResource =
      $grpc.ClientMethod<$0.SetRootResourceRequest, $0.SetRootResourceResponse>(
          '/pulumirpc.Engine/SetRootResource',
          ($0.SetRootResourceRequest value) => value.writeToBuffer(),
          $0.SetRootResourceResponse.fromBuffer);
  static final _$startDebugging =
      $grpc.ClientMethod<$0.StartDebuggingRequest, $1.Empty>(
          '/pulumirpc.Engine/StartDebugging',
          ($0.StartDebuggingRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$requirePulumiVersion = $grpc.ClientMethod<
          $0.RequirePulumiVersionRequest, $0.RequirePulumiVersionResponse>(
      '/pulumirpc.Engine/RequirePulumiVersion',
      ($0.RequirePulumiVersionRequest value) => value.writeToBuffer(),
      $0.RequirePulumiVersionResponse.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.Engine')
abstract class EngineServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.Engine';

  EngineServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LogRequest, $1.Empty>(
        'Log',
        log_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LogRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRootResourceRequest,
            $0.GetRootResourceResponse>(
        'GetRootResource',
        getRootResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetRootResourceRequest.fromBuffer(value),
        ($0.GetRootResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetRootResourceRequest,
            $0.SetRootResourceResponse>(
        'SetRootResource',
        setRootResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetRootResourceRequest.fromBuffer(value),
        ($0.SetRootResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StartDebuggingRequest, $1.Empty>(
        'StartDebugging',
        startDebugging_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.StartDebuggingRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequirePulumiVersionRequest,
            $0.RequirePulumiVersionResponse>(
        'RequirePulumiVersion',
        requirePulumiVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RequirePulumiVersionRequest.fromBuffer(value),
        ($0.RequirePulumiVersionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> log_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LogRequest> $request) async {
    return log($call, await $request);
  }

  $async.Future<$1.Empty> log($grpc.ServiceCall call, $0.LogRequest request);

  $async.Future<$0.GetRootResourceResponse> getRootResource_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetRootResourceRequest> $request) async {
    return getRootResource($call, await $request);
  }

  $async.Future<$0.GetRootResourceResponse> getRootResource(
      $grpc.ServiceCall call, $0.GetRootResourceRequest request);

  $async.Future<$0.SetRootResourceResponse> setRootResource_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.SetRootResourceRequest> $request) async {
    return setRootResource($call, await $request);
  }

  $async.Future<$0.SetRootResourceResponse> setRootResource(
      $grpc.ServiceCall call, $0.SetRootResourceRequest request);

  $async.Future<$1.Empty> startDebugging_Pre($grpc.ServiceCall $call,
      $async.Future<$0.StartDebuggingRequest> $request) async {
    return startDebugging($call, await $request);
  }

  $async.Future<$1.Empty> startDebugging(
      $grpc.ServiceCall call, $0.StartDebuggingRequest request);

  $async.Future<$0.RequirePulumiVersionResponse> requirePulumiVersion_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.RequirePulumiVersionRequest> $request) async {
    return requirePulumiVersion($call, await $request);
  }

  $async.Future<$0.RequirePulumiVersionResponse> requirePulumiVersion(
      $grpc.ServiceCall call, $0.RequirePulumiVersionRequest request);
}
