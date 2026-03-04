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
      'statusCodeRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<FailureStatusCodeRange>,
            List<Map<String, dynamic>>
          >(
            statusCodeRanges,
            (value) =>
                pulumi.Input.encodeList<
                  FailureStatusCodeRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CircuitBreakerFailureCondition.fromMap(Map<String, dynamic> map) {
    return CircuitBreakerFailureCondition(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      errorReasons: (() {
        final guardedValue = map['errorReasons'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      interval: (() {
        final guardedValue = map['interval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      percentage: (() {
        final guardedValue = map['percentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      statusCodeRanges: (() {
        final guardedValue = map['statusCodeRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FailureStatusCodeRange>(
            guardedValue,
            (value) => FailureStatusCodeRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
