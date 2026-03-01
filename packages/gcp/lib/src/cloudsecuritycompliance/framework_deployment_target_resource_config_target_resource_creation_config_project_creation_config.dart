// ignore_for_file: unused_element, unnecessary_cast

class FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig {
  /// Billing account id to be used for the project.
  final String billingAccountId;

  /// organizations/{org} or folders/{folder}
  final String parent;

  /// Display name of the project to be created.
  final String projectDisplayName;

  /// Creates a new [FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig].
  /// [billingAccountId] Billing account id to be used for the project.
  /// [parent] organizations/{org} or folders/{folder}
  /// [projectDisplayName] Display name of the project to be created.
  FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig({
    required this.billingAccountId,
    required this.parent,
    required this.projectDisplayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'parent': parent,
      'projectDisplayName': projectDisplayName,
    };
  }

  factory FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig(
      billingAccountId: map['billingAccountId'] as String,
      parent: map['parent'] as String,
      projectDisplayName: map['projectDisplayName'] as String,
    );
  }
}
