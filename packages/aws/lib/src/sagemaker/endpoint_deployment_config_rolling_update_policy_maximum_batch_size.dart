// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize {
  /// Specifies the endpoint capacity type. Valid values are: `INSTANCE_COUNT`, or `CAPACITY_PERCENT`.
  final String type;
  /// Defines the capacity size, either as a number of instances or a capacity percentage.
  final int value;

  /// Creates a new [EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize].
  /// [type] Specifies the endpoint capacity type. Valid values are: `INSTANCE_COUNT`, or `CAPACITY_PERCENT`.
  /// [value] Defines the capacity size, either as a number of instances or a capacity percentage.
  EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize.fromMap(Map<String, dynamic> map) {
    return EndpointDeploymentConfigRollingUpdatePolicyMaximumBatchSize(
      type: map['type'] as String,
      value: map['value'] as int,
    );
  }
}

