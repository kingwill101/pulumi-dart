// This is a generated file - do not edit.
//
// Generated from pulumi/events.proto.

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

import 'events.pb.dart' as $0;

export 'events.pb.dart';

/// Events is a service for receiving engine events over gRPC.
/// This service allows the Pulumi CLI to send engine events to clients
/// (such as the Automation API) over a gRPC stream instead of writing them to
/// a file on the filesystem and reading them from there.
@$pb.GrpcServiceName('pulumirpc.Events')
class EventsClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  EventsClient(super.channel, {super.options, super.interceptors});

  /// StreamEvents allows the client to stream multiple engine events to the server.
  /// The client sends multiple EventRequest messages over the stream, and the server
  /// processes them as they arrive. When the client is done sending events, it closes
  /// the stream.
  $grpc.ResponseFuture<$1.Empty> streamEvents(
    $async.Stream<$0.EventRequest> request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(_$streamEvents, request, options: options)
        .single;
  }

  // method descriptors

  static final _$streamEvents = $grpc.ClientMethod<$0.EventRequest, $1.Empty>(
      '/pulumirpc.Events/StreamEvents',
      ($0.EventRequest value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.Events')
abstract class EventsServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.Events';

  EventsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EventRequest, $1.Empty>(
        'StreamEvents',
        streamEvents,
        true,
        false,
        ($core.List<$core.int> value) => $0.EventRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> streamEvents(
      $grpc.ServiceCall call, $async.Stream<$0.EventRequest> request);
}
