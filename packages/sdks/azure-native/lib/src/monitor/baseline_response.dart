// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the target parameters for a Slo baseline.
class BaselineResponse {
  /// Specifies how evaluation is calculated, either based on calendar days or a rolling window.
  final pulumi.Input<String> evaluationCalculationType;
  /// The time frame (in days) used for SLI evaluation.
  final pulumi.Input<int> evaluationPeriodDays;
  /// The user-defined or Azure-defined target value used for comparison against the SLI value.
  final pulumi.Input<double> value;

  /// Creates a new [BaselineResponse].
  /// [evaluationCalculationType] Specifies how evaluation is calculated, either based on calendar days or a rolling window.
  /// [evaluationPeriodDays] The time frame (in days) used for SLI evaluation.
  /// [value] The user-defined or Azure-defined target value used for comparison against the SLI value.
  const BaselineResponse({
    required this.evaluationCalculationType,
    required this.evaluationPeriodDays,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationCalculationType': evaluationCalculationType,
      'evaluationPeriodDays': evaluationPeriodDays,
      'value': value,
    };
  }

  factory BaselineResponse.fromMap(Map<String, dynamic> map) {
    return BaselineResponse(
      evaluationCalculationType: pulumi.Input.fromValue(map['evaluationCalculationType'] as String),
      evaluationPeriodDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['evaluationPeriodDays'])),
      value: pulumi.Input.fromValue((map['value'] as num).toDouble()),
    );
  }
}
