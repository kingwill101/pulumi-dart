// ignore_for_file: unused_element, unnecessary_cast

class DeploymentConfigZonalConfigMinimumHealthyHostsPerZone {
  /// The type can either be `FLEET_PERCENT` or `HOST_COUNT`.
  final String? type;

  /// The value when the type is `FLEET_PERCENT` represents the minimum number of healthy instances as a percentage of the total number of instances in the Availability Zone during a deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instance and rounds up fractional instances. When the type is `HOST_COUNT`, the value represents the minimum number of healthy instances in the Availability Zone as an absolute value.
  final int? value;

  DeploymentConfigZonalConfigMinimumHealthyHostsPerZone({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory DeploymentConfigZonalConfigMinimumHealthyHostsPerZone.fromMap(
      Map<String, dynamic> map) {
    return DeploymentConfigZonalConfigMinimumHealthyHostsPerZone(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}
