// ignore_for_file: unused_element, unnecessary_cast

/// Output object for Deployments
class DeploymentOutputEntryResponse {
  /// Key of the output
  final String key;

  /// Value of the label
  final String value;

  DeploymentOutputEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory DeploymentOutputEntryResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentOutputEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
