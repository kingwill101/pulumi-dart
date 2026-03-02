// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'self_tracing_response.dart';

/// Broker Diagnostic Trace properties
class TracesResponse {
  /// The cache size in megabytes.
  final pulumi.Input<int>? cacheSizeMegabytes;
  /// The toggle to enable/disable traces.
  final pulumi.Input<String>? mode;
  /// The self tracing properties.
  final pulumi.Input<SelfTracingResponse>? selfTracing;
  /// The span channel capacity.
  final pulumi.Input<int>? spanChannelCapacity;

  /// Creates a new [TracesResponse].
  /// [cacheSizeMegabytes] The cache size in megabytes.
  /// [mode] The toggle to enable/disable traces.
  /// [selfTracing] The self tracing properties.
  /// [spanChannelCapacity] The span channel capacity.
  TracesResponse({
    this.cacheSizeMegabytes,
    this.mode,
    this.selfTracing,
    this.spanChannelCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheSizeMegabytes': ?cacheSizeMegabytes,
      'mode': ?mode,
      'selfTracing': ?pulumi.Input.mapOptionalInputValue<SelfTracingResponse, Map<String, dynamic>>(selfTracing, (value) => value.toMap()),
      'spanChannelCapacity': ?spanChannelCapacity,
    };
  }

  factory TracesResponse.fromMap(Map<String, dynamic> map) {
    return TracesResponse(
      cacheSizeMegabytes: map['cacheSizeMegabytes'] == null ? null : (map['cacheSizeMegabytes'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      selfTracing: map['selfTracing'] == null ? null : (SelfTracingResponse.fromMap((map['selfTracing'] as Map).cast<String, dynamic>())).input(),
      spanChannelCapacity: map['spanChannelCapacity'] == null ? null : (map['spanChannelCapacity'] as int).input(),
    );
  }
}

