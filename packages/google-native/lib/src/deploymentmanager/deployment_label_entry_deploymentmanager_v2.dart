// ignore_for_file: unused_element, unnecessary_cast

/// Label object for Deployments
class DeploymentLabelEntryDeploymentmanagerV2 {
  /// Key of the label
  final String? key;

  /// Value of the label
  final String? value;

  /// Creates a new [DeploymentLabelEntryDeploymentmanagerV2].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentLabelEntryDeploymentmanagerV2({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory DeploymentLabelEntryDeploymentmanagerV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentLabelEntryDeploymentmanagerV2(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
