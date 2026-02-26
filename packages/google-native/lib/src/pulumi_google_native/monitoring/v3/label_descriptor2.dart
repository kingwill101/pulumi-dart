// ignore_for_file: unused_element, unnecessary_cast

import 'label_descriptor_value_type2.dart';

/// A description of a label.
class LabelDescriptor2 {
  /// A human-readable description for the label.
  final String? description;

  /// The key for this label. The key must meet the following criteria: Does not exceed 100 characters. Matches the following regular expression: [a-zA-Z][a-zA-Z0-9_]* The first character must be an upper- or lower-case letter. The remaining characters must be letters, digits, or underscores.
  final String? key;

  /// The type of data that can be assigned to the label.
  final LabelDescriptorValueType2? valueType;

  LabelDescriptor2({
    this.description,
    this.key,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueTypeValue = valueType;
    if (valueTypeValue != null) {
      map['valueType'] = valueTypeValue.value;
    }
    return map;
  }

  factory LabelDescriptor2.fromMap(Map<String, dynamic> map) {
    return LabelDescriptor2(
      description:
          map['description'] == null ? null : map['description'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      valueType: map['valueType'] == null
          ? null
          : LabelDescriptorValueType2.fromValue(map['valueType'] as String),
    );
  }
}
