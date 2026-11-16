// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceComponentDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize {
  /// Capacity size type. Valid values: `COPY_COUNT`, `CAPACITY_PERCENT`.
  final pulumi.Input<String> type;
  /// Capacity size value.
  final pulumi.Input<int> value;

  /// Creates a new [InferenceComponentDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize].
  /// [type] Capacity size type. Valid values: `COPY_COUNT`, `CAPACITY_PERCENT`.
  /// [value] Capacity size value.
  const InferenceComponentDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory InferenceComponentDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize.fromMap(Map<String, dynamic> map) {
    return InferenceComponentDeploymentConfigRollingUpdatePolicyRollbackMaximumBatchSize(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['value'])),
    );
  }
}
