// ignore_for_file: unused_element, unnecessary_cast

/// Label object for DeploymentUpdate
class DeploymentUpdateLabelEntryResponse {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  DeploymentUpdateLabelEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory DeploymentUpdateLabelEntryResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentUpdateLabelEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
