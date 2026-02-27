// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption {
  /// The method used to add instances to a replacement environment.
  /// * `DISCOVER_EXISTING`: Use instances that already exist or will be created manually.
  /// * `COPY_AUTO_SCALING_GROUP`: Use settings from a specified **Auto Scaling** group to define and create instances in a new Auto Scaling group. _Exactly one Auto Scaling group must be specified_ when selecting `COPY_AUTO_SCALING_GROUP`. Use `autoscaling_groups` to specify the Auto Scaling group.
  final String? action;

  DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption({
    this.action,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    return map;
  }

  factory DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupBlueGreenDeploymentConfigGreenFleetProvisioningOption(
      action: map['action'] == null ? null : map['action'] as String,
    );
  }
}
