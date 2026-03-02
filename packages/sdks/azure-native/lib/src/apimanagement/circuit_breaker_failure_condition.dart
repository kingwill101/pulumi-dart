// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failure_status_code_range.dart';

/// The trip conditions of the circuit breaker
class CircuitBreakerFailureCondition {
  /// The threshold for opening the circuit.
  final pulumi.Input<double>? count;
  /// The error reasons which are considered as failure.
  final pulumi.Input<List<String>>? errorReasons;
  /// The interval during which the failures are counted.
  final pulumi.Input<String>? interval;
  /// The threshold for opening the circuit.
  final pulumi.Input<double>? percentage;
  /// The status code ranges which are considered as failure.
  final pulumi.Input<List<FailureStatusCodeRange>>? statusCodeRanges;

  /// Creates a new [CircuitBreakerFailureCondition].
  /// [count] The threshold for opening the circuit.
  /// [errorReasons] The error reasons which are considered as failure.
  /// [interval] The interval during which the failures are counted.
  /// [percentage] The threshold for opening the circuit.
  /// [statusCodeRanges] The status code ranges which are considered as failure.
  CircuitBreakerFailureCondition({
    this.count,
    this.errorReasons,
    this.interval,
    this.percentage,
    this.statusCodeRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'errorReasons': ?errorReasons,
      'interval': ?interval,
      'percentage': ?percentage,
      'statusCodeRanges': ?pulumi.Input.mapOptionalInputValue<List<FailureStatusCodeRange>, List<Map<String, dynamic>>>(statusCodeRanges, (value) => pulumi.Input.encodeList<FailureStatusCodeRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CircuitBreakerFailureCondition.fromMap(Map<String, dynamic> map) {
    return CircuitBreakerFailureCondition(
      count: map['count'] == null ? null : (map['count'] as double).input(),
      errorReasons: map['errorReasons'] == null ? null : ((map['errorReasons'] as List).cast<String>()).input(),
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      percentage: map['percentage'] == null ? null : (map['percentage'] as double).input(),
      statusCodeRanges: map['statusCodeRanges'] == null ? null : (pulumi.Input.decodeList<FailureStatusCodeRange>(map['statusCodeRanges'], (value) => FailureStatusCodeRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

