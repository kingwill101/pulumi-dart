// ignore_for_file: unused_element, unnecessary_cast

/// A description of a label.
class LabelDescriptorResponse3 {
  /// A human-readable description for the label.
  final String description;

  /// The label key.
  final String key;

  /// The type of data that can be assigned to the label.
  final String valueType;

  LabelDescriptorResponse3({
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

  factory LabelDescriptorResponse3.fromMap(Map<String, dynamic> map) {
    return LabelDescriptorResponse3(
      description: map['description'] as String,
      key: map['key'] as String,
      valueType: map['valueType'] as String,
    );
  }
}
