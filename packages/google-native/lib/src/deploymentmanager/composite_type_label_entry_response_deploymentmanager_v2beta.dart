// ignore_for_file: unused_element, unnecessary_cast


/// Label object for CompositeTypes
class CompositeTypeLabelEntryResponseDeploymentmanagerV2beta {
  /// Key of the label
  final String key;
  /// Value of the label
  final String value;

  /// Creates a new [CompositeTypeLabelEntryResponseDeploymentmanagerV2beta].
  /// [key] Key of the label
  /// [value] Value of the label
  CompositeTypeLabelEntryResponseDeploymentmanagerV2beta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory CompositeTypeLabelEntryResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return CompositeTypeLabelEntryResponseDeploymentmanagerV2beta(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

