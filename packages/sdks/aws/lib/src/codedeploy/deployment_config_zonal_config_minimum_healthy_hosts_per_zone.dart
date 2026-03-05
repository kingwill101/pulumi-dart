// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentConfigZonalConfigMinimumHealthyHostsPerZone {
  /// The type can either be `FLEET_PERCENT` or `HOST_COUNT`.
  final pulumi.Input<String>? type;
  /// The value when the type is `FLEET_PERCENT` represents the minimum number of healthy instances as a percentage of the total number of instances in the Availability Zone during a deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances. When the type is `HOST_COUNT`, the value represents the minimum number of healthy instances in the Availability Zone as an absolute value.
  final pulumi.Input<int>? value;

  /// Creates a new [DeploymentConfigZonalConfigMinimumHealthyHostsPerZone].
  /// [type] The type can either be `FLEET_PERCENT` or `HOST_COUNT`.
  /// [value] The value when the type is `FLEET_PERCENT` represents the minimum number of healthy instances as a percentage of the total number of instances in the Availability Zone during a deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances. When the type is `HOST_COUNT`, the value represents the minimum number of healthy instances in the Availability Zone as an absolute value.
  DeploymentConfigZonalConfigMinimumHealthyHostsPerZone({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory DeploymentConfigZonalConfigMinimumHealthyHostsPerZone.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigZonalConfigMinimumHealthyHostsPerZone(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

