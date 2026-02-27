// ignore_for_file: unused_element, unnecessary_cast

/// Label object for Deployments
class DeploymentLabelEntryResponseDeploymentmanagerV2 {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  DeploymentLabelEntryResponseDeploymentmanagerV2({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory DeploymentLabelEntryResponseDeploymentmanagerV2.fromMap(
      Map<String, dynamic> map) {
    return DeploymentLabelEntryResponseDeploymentmanagerV2(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
