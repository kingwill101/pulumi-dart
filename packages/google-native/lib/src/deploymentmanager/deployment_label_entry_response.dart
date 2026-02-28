// ignore_for_file: unused_element, unnecessary_cast

/// Label object for Deployments
class DeploymentLabelEntryResponse {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  /// Creates a new [DeploymentLabelEntryResponse].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentLabelEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory DeploymentLabelEntryResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentLabelEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
