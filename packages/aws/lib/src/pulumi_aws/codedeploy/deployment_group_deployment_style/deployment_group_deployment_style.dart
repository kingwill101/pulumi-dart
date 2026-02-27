// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupDeploymentStyle {
  /// Indicates whether to route deployment traffic behind a load balancer. Valid Values are `WITH_TRAFFIC_CONTROL` or `WITHOUT_TRAFFIC_CONTROL`. Default is `WITHOUT_TRAFFIC_CONTROL`.
  final String? deploymentOption;

  /// Indicates whether to run an in-place deployment or a blue/green deployment. Valid Values are `IN_PLACE` or `BLUE_GREEN`. Default is `IN_PLACE`.
  ///
  /// _Only one `deployment_style` is allowed_.
  final String? deploymentType;

  DeploymentGroupDeploymentStyle({
    this.deploymentOption,
    this.deploymentType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deploymentOptionValue = deploymentOption;
    if (deploymentOptionValue != null) {
      map['deploymentOption'] = deploymentOptionValue;
    }
    final deploymentTypeValue = deploymentType;
    if (deploymentTypeValue != null) {
      map['deploymentType'] = deploymentTypeValue;
    }
    return map;
  }

  factory DeploymentGroupDeploymentStyle.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupDeploymentStyle(
      deploymentOption: map['deploymentOption'] == null
          ? null
          : map['deploymentOption'] as String,
      deploymentType: map['deploymentType'] == null
          ? null
          : map['deploymentType'] as String,
    );
  }
}
