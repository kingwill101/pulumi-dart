// ignore_for_file: unused_element, unnecessary_cast

class EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize {
  /// Specifies the endpoint capacity type. Valid values are: `INSTANCE_COUNT`, or `CAPACITY_PERCENT`.
  final String type;

  /// Defines the capacity size, either as a number of instances or a capacity percentage.
  final int value;

  EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize.fromMap(
      Map<String, dynamic> map) {
    return EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize(
      type: map['type'] as String,
      value: map['value'] as int,
    );
  }
}
