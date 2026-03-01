// ignore_for_file: unused_element, unnecessary_cast

/// Label object for DeploymentUpdate
class DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  /// Creates a new [DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
