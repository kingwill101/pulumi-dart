// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failure_status_code_range_response.dart';

/// The trip conditions of the circuit breaker
class CircuitBreakerFailureConditionResponse {
  /// The threshold for opening the circuit.
  final pulumi.Input<double>? count;
  /// The error reasons which are considered as failure.
  final pulumi.Input<List<String>>? errorReasons;
  /// The interval during which the failures are counted.
  final pulumi.Input<String>? interval;
  /// The threshold for opening the circuit.
  final pulumi.Input<double>? percentage;
  /// The status code ranges which are considered as failure.
  final pulumi.Input<List<FailureStatusCodeRangeResponse>>? statusCodeRanges;

  /// Creates a new [CircuitBreakerFailureConditionResponse].
  /// [count] The threshold for opening the circuit.
  /// [errorReasons] The error reasons which are considered as failure.
  /// [interval] The interval during which the failures are counted.
  /// [percentage] The threshold for opening the circuit.
  /// [statusCodeRanges] The status code ranges which are considered as failure.
  const CircuitBreakerFailureConditionResponse({
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
      'statusCodeRanges': ?pulumi.Input.mapOptionalInputValue<List<FailureStatusCodeRangeResponse>, List<Map<String, dynamic>>>(statusCodeRanges, (value) => pulumi.Input.encodeList<FailureStatusCodeRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CircuitBreakerFailureConditionResponse.fromMap(Map<String, dynamic> map) {
    return CircuitBreakerFailureConditionResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      errorReasons: (() { final guardedValue = map['errorReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      statusCodeRanges: (() { final guardedValue = map['statusCodeRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FailureStatusCodeRangeResponse>(guardedValue, (value) => FailureStatusCodeRangeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

