// ignore_for_file: unused_element, unnecessary_cast

/// A description of a label.
class LabelDescriptorResponseMonitoringV3 {
  /// A human-readable description for the label.
  final String description;

  /// The key for this label. The key must meet the following criteria: Does not exceed 100 characters. Matches the following regular expression: [a-zA-Z][a-zA-Z0-9_]* The first character must be an upper- or lower-case letter. The remaining characters must be letters, digits, or underscores.
  final String key;

  /// The type of data that can be assigned to the label.
  final String valueType;

  LabelDescriptorResponseMonitoringV3({
    required this.description,
    required this.key,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['key'] = key;
    map['valueType'] = valueType;
    return map;
  }

  factory LabelDescriptorResponseMonitoringV3.fromMap(
      Map<String, dynamic> map) {
    return LabelDescriptorResponseMonitoringV3(
      description: map['description'] as String,
      key: map['key'] as String,
      valueType: map['valueType'] as String,
    );
  }
}
