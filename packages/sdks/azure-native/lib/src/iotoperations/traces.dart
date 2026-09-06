// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'self_tracing.dart';

/// Broker Diagnostic Trace properties
class Traces {
  /// The cache size in megabytes.
  final pulumi.Input<int?>? cacheSizeMegabytes;
  /// The toggle to enable/disable traces.
  final pulumi.Input<dynamic>? mode;
  /// The self tracing properties.
  final pulumi.Input<SelfTracing?>? selfTracing;
  /// The span channel capacity.
  final pulumi.Input<int?>? spanChannelCapacity;

  /// Creates a new [Traces].
  /// [cacheSizeMegabytes] The cache size in megabytes.
  /// [mode] The toggle to enable/disable traces.
  /// [selfTracing] The self tracing properties.
  /// [spanChannelCapacity] The span channel capacity.
  Traces({
    pulumi.Input<int?>? cacheSizeMegabytes,
    pulumi.Input<dynamic>? mode,
    this.selfTracing,
    pulumi.Input<int?>? spanChannelCapacity,
  }) : cacheSizeMegabytes = cacheSizeMegabytes ?? pulumi.Input.fromValue(16), mode = mode ?? pulumi.Input.fromValue('Enabled'), spanChannelCapacity = spanChannelCapacity ?? pulumi.Input.fromValue(1000);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheSizeMegabytes': ?cacheSizeMegabytes,
      'mode': ?mode,
      'selfTracing': ?pulumi.Input.mapOptionalInputValue<SelfTracing, Map<String, dynamic>>(selfTracing, (value) => value.toMap()),
      'spanChannelCapacity': ?spanChannelCapacity,
    };
  }

  factory Traces.fromMap(Map<String, dynamic> map) {
    return Traces(
      cacheSizeMegabytes: (() { final guardedValue = map['cacheSizeMegabytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      selfTracing: (() { final guardedValue = map['selfTracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelfTracing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spanChannelCapacity: (() { final guardedValue = map['spanChannelCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
