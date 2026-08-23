// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize {
  /// Specifies the endpoint capacity type. Valid values are: `INSTANCE_COUNT`, or `CAPACITY_PERCENT`.
  final pulumi.Input<String> type;
  /// Defines the capacity size, either as a number of instances or a capacity percentage.
  final pulumi.Input<int> value;

  /// Creates a new [EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize].
  /// [type] Specifies the endpoint capacity type. Valid values are: `INSTANCE_COUNT`, or `CAPACITY_PERCENT`.
  /// [value] Defines the capacity size, either as a number of instances or a capacity percentage.
  const EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize.fromMap(Map<String, dynamic> map) {
    return EndpointDeploymentConfigBlueGreenUpdatePolicyTrafficRoutingConfigurationCanarySize(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
