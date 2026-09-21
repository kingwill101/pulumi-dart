// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionRetryStrategy {
  /// Maximum retry attempts.
  final pulumi.Input<int> maximumRetryAttempts;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionRetryStrategy].
  /// [maximumRetryAttempts] Maximum retry attempts.
  const HyperParameterTuningJobTrainingJobDefinitionRetryStrategy({
    required this.maximumRetryAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumRetryAttempts': maximumRetryAttempts,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionRetryStrategy.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionRetryStrategy(
      maximumRetryAttempts: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maximumRetryAttempts'])),
    );
  }
}
