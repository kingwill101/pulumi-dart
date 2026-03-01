// ignore_for_file: unused_element, unnecessary_cast

/// Label object for DeploymentUpdate
class DeploymentUpdateLabelEntryResponseDeploymentmanagerV2 {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  /// Creates a new [DeploymentUpdateLabelEntryResponseDeploymentmanagerV2].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentUpdateLabelEntryResponseDeploymentmanagerV2({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory DeploymentUpdateLabelEntryResponseDeploymentmanagerV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentUpdateLabelEntryResponseDeploymentmanagerV2(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
