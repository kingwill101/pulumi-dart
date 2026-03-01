// ignore_for_file: unused_element, unnecessary_cast

import 'self_tracing_response.dart';

/// Broker Diagnostic Trace properties
class TracesResponse {
  /// The cache size in megabytes.
  final int? cacheSizeMegabytes;
  /// The toggle to enable/disable traces.
  final String? mode;
  /// The self tracing properties.
  final SelfTracingResponse? selfTracing;
  /// The span channel capacity.
  final int? spanChannelCapacity;

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
      'selfTracing': ?selfTracing == null ? null : selfTracing!.toMap(),
      'spanChannelCapacity': ?spanChannelCapacity,
    };
  }

  factory TracesResponse.fromMap(Map<String, dynamic> map) {
    return TracesResponse(
      cacheSizeMegabytes: map['cacheSizeMegabytes'] == null ? null : map['cacheSizeMegabytes'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      selfTracing: map['selfTracing'] == null ? null : SelfTracingResponse.fromMap((map['selfTracing'] as Map).cast<String, dynamic>()),
      spanChannelCapacity: map['spanChannelCapacity'] == null ? null : map['spanChannelCapacity'] as int,
    );
  }
}

