// ignore_for_file: unused_element, unnecessary_cast

/// Label object for CompositeTypes
class CompositeTypeLabelEntryResponseDeploymentmanagerV2beta {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  CompositeTypeLabelEntryResponseDeploymentmanagerV2beta({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory CompositeTypeLabelEntryResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return CompositeTypeLabelEntryResponseDeploymentmanagerV2beta(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
