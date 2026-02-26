// ignore_for_file: unused_element, unnecessary_cast

import 'label_descriptor_value_type3.dart';

/// A description of a label.
class LabelDescriptor3 {
  /// A human-readable description for the label.
  final String? description;

  /// The label key.
  final String? key;

  /// The type of data that can be assigned to the label.
  final LabelDescriptorValueType3? valueType;

  LabelDescriptor3({
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

  factory LabelDescriptor3.fromMap(Map<String, dynamic> map) {
    return LabelDescriptor3(
      description:
          map['description'] == null ? null : map['description'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      valueType: map['valueType'] == null
          ? null
          : LabelDescriptorValueType3.fromValue(map['valueType'] as String),
    );
  }
}
