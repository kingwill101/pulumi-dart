// ignore_for_file: unused_element, unnecessary_cast

/// A description of a label.
class LabelDescriptorResponseServicemanagementV1 {
  /// A human-readable description for the label.
  final String description;

  /// The label key.
  final String key;

  /// The type of data that can be assigned to the label.
  final String valueType;

  LabelDescriptorResponseServicemanagementV1({
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

  factory LabelDescriptorResponseServicemanagementV1.fromMap(
      Map<String, dynamic> map) {
    return LabelDescriptorResponseServicemanagementV1(
      description: map['description'] as String,
      key: map['key'] as String,
      valueType: map['valueType'] as String,
    );
  }
}
