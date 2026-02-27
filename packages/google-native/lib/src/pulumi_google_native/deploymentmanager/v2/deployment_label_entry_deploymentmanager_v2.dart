// ignore_for_file: unused_element, unnecessary_cast

/// Label object for Deployments
class DeploymentLabelEntryDeploymentmanagerV2 {
  /// Key of the label
  final String? key;

  /// Value of the label
  final String? value;

  DeploymentLabelEntryDeploymentmanagerV2({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory DeploymentLabelEntryDeploymentmanagerV2.fromMap(
      Map<String, dynamic> map) {
    return DeploymentLabelEntryDeploymentmanagerV2(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
