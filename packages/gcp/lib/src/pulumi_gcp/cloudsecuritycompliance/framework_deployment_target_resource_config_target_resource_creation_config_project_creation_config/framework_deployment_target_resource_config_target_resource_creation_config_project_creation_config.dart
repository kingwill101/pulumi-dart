// ignore_for_file: unused_element, unnecessary_cast

class FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig {
  /// Billing account id to be used for the project.
  final String billingAccountId;

  /// organizations/{org} or folders/{folder}
  final String parent;

  /// Display name of the project to be created.
  final String projectDisplayName;

  FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig({
    required this.billingAccountId,
    required this.parent,
    required this.projectDisplayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['parent'] = parent;
    map['projectDisplayName'] = projectDisplayName;
    return map;
  }

  factory FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig.fromMap(
      Map<String, dynamic> map) {
    return FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig(
      billingAccountId: map['billingAccountId'] as String,
      parent: map['parent'] as String,
      projectDisplayName: map['projectDisplayName'] as String,
    );
  }
}
