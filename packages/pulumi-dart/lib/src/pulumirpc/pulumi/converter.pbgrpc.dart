// This is a generated file - do not edit.
//
// Generated from pulumi/converter.proto.

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

import 'converter.pb.dart' as $0;

export 'converter.pb.dart';

/// Converter is a service for converting between other ecosystems and Pulumi.
/// This is currently unstable and experimental.
@$pb.GrpcServiceName('pulumirpc.Converter')
class ConverterClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ConverterClient(super.channel, {super.options, super.interceptors});

  /// ConvertState converts state from the target ecosystem into a form that can be imported into Pulumi.
  $grpc.ResponseFuture<$0.ConvertStateResponse> convertState(
    $0.ConvertStateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$convertState, request, options: options);
  }

  /// ConvertProgram converts a program from the target ecosystem into a form that can be used with Pulumi.
  $grpc.ResponseFuture<$0.ConvertProgramResponse> convertProgram(
    $0.ConvertProgramRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$convertProgram, request, options: options);
  }

  // method descriptors

  static final _$convertState =
      $grpc.ClientMethod<$0.ConvertStateRequest, $0.ConvertStateResponse>(
          '/pulumirpc.Converter/ConvertState',
          ($0.ConvertStateRequest value) => value.writeToBuffer(),
          $0.ConvertStateResponse.fromBuffer);
  static final _$convertProgram =
      $grpc.ClientMethod<$0.ConvertProgramRequest, $0.ConvertProgramResponse>(
          '/pulumirpc.Converter/ConvertProgram',
          ($0.ConvertProgramRequest value) => value.writeToBuffer(),
          $0.ConvertProgramResponse.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.Converter')
abstract class ConverterServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.Converter';

  ConverterServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ConvertStateRequest, $0.ConvertStateResponse>(
            'ConvertState',
            convertState_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ConvertStateRequest.fromBuffer(value),
            ($0.ConvertStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ConvertProgramRequest,
            $0.ConvertProgramResponse>(
        'ConvertProgram',
        convertProgram_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ConvertProgramRequest.fromBuffer(value),
        ($0.ConvertProgramResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ConvertStateResponse> convertState_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ConvertStateRequest> $request) async {
    return convertState($call, await $request);
  }

  $async.Future<$0.ConvertStateResponse> convertState(
      $grpc.ServiceCall call, $0.ConvertStateRequest request);

  $async.Future<$0.ConvertProgramResponse> convertProgram_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ConvertProgramRequest> $request) async {
    return convertProgram($call, await $request);
  }

  $async.Future<$0.ConvertProgramResponse> convertProgram(
      $grpc.ServiceCall call, $0.ConvertProgramRequest request);
}
