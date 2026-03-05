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
      cacheSizeMegabytes: (() { final guardedValue = map['cacheSizeMegabytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfTracing: (() { final guardedValue = map['selfTracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelfTracingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spanChannelCapacity: (() { final guardedValue = map['spanChannelCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

