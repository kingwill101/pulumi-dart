// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Job execution constraints.
class NlpVerticalLimitSettings {
  /// Maximum Concurrent AutoML iterations.
  final pulumi.Input<int?>? maxConcurrentTrials;
  /// Number of AutoML iterations.
  final pulumi.Input<int?>? maxTrials;
  /// AutoML job timeout.
  final pulumi.Input<String?>? timeout;

  /// Creates a new [NlpVerticalLimitSettings].
  /// [maxConcurrentTrials] Maximum Concurrent AutoML iterations.
  /// [maxTrials] Number of AutoML iterations.
  /// [timeout] AutoML job timeout.
  NlpVerticalLimitSettings({
    pulumi.Input<int?>? maxConcurrentTrials,
    pulumi.Input<int?>? maxTrials,
    pulumi.Input<String?>? timeout,
  }) : maxConcurrentTrials = maxConcurrentTrials ?? pulumi.Input.fromValue(1), maxTrials = maxTrials ?? pulumi.Input.fromValue(1), timeout = timeout ?? pulumi.Input.fromValue('P7D');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentTrials': ?maxConcurrentTrials,
      'maxTrials': ?maxTrials,
      'timeout': ?timeout,
    };
  }

  factory NlpVerticalLimitSettings.fromMap(Map<String, dynamic> map) {
    return NlpVerticalLimitSettings(
      maxConcurrentTrials: (() { final guardedValue = map['maxConcurrentTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxTrials: (() { final guardedValue = map['maxTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
