// ignore_for_file: unused_element, unnecessary_cast

class EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize {
  /// Specifies the endpoint capacity type. Valid values are: `INSTANCE_COUNT`, or `CAPACITY_PERCENT`.
  final String type;

  /// Defines the capacity size, either as a number of instances or a capacity percentage.
  final int value;

  /// Creates a new [EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize].
  /// [type] Specifies the endpoint capacity type. Valid values are: `INSTANCE_COUNT`, or `CAPACITY_PERCENT`.
  /// [value] Defines the capacity size, either as a number of instances or a capacity percentage.
  EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': value};
  }

  factory EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationLinearStepSize(
      type: map['type'] as String,
      value: map['value'] as int,
    );
  }
}
