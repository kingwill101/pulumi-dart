// This is a generated file - do not edit.
//
// Generated from pulumi/resource_status.proto.

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

import 'resource_status.pb.dart' as $0;

export 'resource_status.pb.dart';

/// ResourceStatus is an interface that can be called from a resource provider to update status about a resource.
@$pb.GrpcServiceName('pulumirpc.ResourceStatus')
class ResourceStatusClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ResourceStatusClient(super.channel, {super.options, super.interceptors});

  /// `PublishViewSteps` is used to publish a series of steps for a view resource.
  /// Views can be materialized via create and update steps, and more complex
  /// changes, such as replacements, can be modeled as a series of steps.
  /// The engine does not actually apply these steps, but rather flows them through
  /// the engine such that the view resources are written to state and the view
  /// resources are displayed in the UI.
  $grpc.ResponseFuture<$0.PublishViewStepsResponse> publishViewSteps(
    $0.PublishViewStepsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$publishViewSteps, request, options: options);
  }

  // method descriptors

  static final _$publishViewSteps = $grpc.ClientMethod<
          $0.PublishViewStepsRequest, $0.PublishViewStepsResponse>(
      '/pulumirpc.ResourceStatus/PublishViewSteps',
      ($0.PublishViewStepsRequest value) => value.writeToBuffer(),
      $0.PublishViewStepsResponse.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.ResourceStatus')
abstract class ResourceStatusServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.ResourceStatus';

  ResourceStatusServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PublishViewStepsRequest,
            $0.PublishViewStepsResponse>(
        'PublishViewSteps',
        publishViewSteps_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PublishViewStepsRequest.fromBuffer(value),
        ($0.PublishViewStepsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PublishViewStepsResponse> publishViewSteps_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.PublishViewStepsRequest> $request) async {
    return publishViewSteps($call, await $request);
  }

  $async.Future<$0.PublishViewStepsResponse> publishViewSteps(
      $grpc.ServiceCall call, $0.PublishViewStepsRequest request);
}
