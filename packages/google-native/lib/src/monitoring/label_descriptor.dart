// ignore_for_file: unused_element, unnecessary_cast

import 'label_descriptor_value_type.dart';

/// A description of a label.
class LabelDescriptor {
  /// A human-readable description for the label.
  final String? description;

  /// The key for this label. The key must meet the following criteria: Does not exceed 100 characters. Matches the following regular expression: [a-zA-Z][a-zA-Z0-9_]* The first character must be an upper- or lower-case letter. The remaining characters must be letters, digits, or underscores.
  final String? key;

  /// The type of data that can be assigned to the label.
  final LabelDescriptorValueType? valueType;

  /// Creates a new [LabelDescriptor].
  /// [description] A human-readable description for the label.
  /// [key] The key for this label. The key must meet the following criteria: Does not exceed 100 characters. Matches the following regular expression: [a-zA-Z][a-zA-Z0-9_]* The first character must be an upper- or lower-case letter. The remaining characters must be letters, digits, or underscores.
  /// [valueType] The type of data that can be assigned to the label.
  LabelDescriptor({this.description, this.key, this.valueType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'key': ?key,
      'valueType': ?valueType == null ? null : valueType!.value,
    };
  }

  factory LabelDescriptor.fromMap(Map<String, dynamic> map) {
    return LabelDescriptor(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      valueType: map['valueType'] == null
          ? null
          : LabelDescriptorValueType.fromValue(map['valueType'] as String),
    );
  }
}
