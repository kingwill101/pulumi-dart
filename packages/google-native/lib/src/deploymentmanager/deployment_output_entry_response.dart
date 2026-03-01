// ignore_for_file: unused_element, unnecessary_cast

/// Output object for Deployments
class DeploymentOutputEntryResponse {
  /// Key of the output
  final String key;

  /// Value of the label
  final String value;

  /// Creates a new [DeploymentOutputEntryResponse].
  /// [key] Key of the output
  /// [value] Value of the label
  DeploymentOutputEntryResponse({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory DeploymentOutputEntryResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentOutputEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
