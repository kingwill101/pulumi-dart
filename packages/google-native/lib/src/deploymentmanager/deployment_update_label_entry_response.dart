// ignore_for_file: unused_element, unnecessary_cast


/// Label object for DeploymentUpdate
class DeploymentUpdateLabelEntryResponse {
  /// Key of the label
  final String key;
  /// Value of the label
  final String value;

  /// Creates a new [DeploymentUpdateLabelEntryResponse].
  /// [key] Key of the label
  /// [value] Value of the label
  DeploymentUpdateLabelEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory DeploymentUpdateLabelEntryResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentUpdateLabelEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

