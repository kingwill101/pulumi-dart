// ignore_for_file: unused_element, unnecessary_cast

class TagField {
  /// Holds the value for a tag field with boolean type.
  final bool? boolValue;

  /// (Output)
  /// The display name of this field
  final String? displayName;

  /// Holds the value for a tag field with double type.
  final double? doubleValue;

  /// Holds the value for a tag field with enum type. This value must be one of the allowed values in the definition of this enum.
  final String? enumValue;

  /// The identifier for this object. Format specified above.
  final String fieldName;

  /// (Output)
  /// The order of this field with respect to other fields in this tag. For example, a higher value can indicate
  /// a more important field. The value can be negative. Multiple fields can have the same order, and field orders
  /// within a tag do not have to be sequential.
  final int? order;

  /// Holds the value for a tag field with string type.
  final String? stringValue;

  /// Holds the value for a tag field with timestamp type.
  final String? timestampValue;

  /// Creates a new [TagField].
  /// [boolValue] Holds the value for a tag field with boolean type.
  /// [displayName] (Output)
  /// [doubleValue] Holds the value for a tag field with double type.
  /// [enumValue] Holds the value for a tag field with enum type. This value must be one of the allowed values in the definition of this enum.
  /// [fieldName] The identifier for this object. Format specified above.
  /// [order] (Output)
  /// [stringValue] Holds the value for a tag field with string type.
  /// [timestampValue] Holds the value for a tag field with timestamp type.
  TagField({
    this.boolValue,
    this.displayName,
    this.doubleValue,
    this.enumValue,
    required this.fieldName,
    this.order,
    this.stringValue,
    this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boolValueValue = boolValue;
    if (boolValueValue != null) {
      map['boolValue'] = boolValueValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final doubleValueValue = doubleValue;
    if (doubleValueValue != null) {
      map['doubleValue'] = doubleValueValue;
    }
    final enumValueValue = enumValue;
    if (enumValueValue != null) {
      map['enumValue'] = enumValueValue;
    }
    map['fieldName'] = fieldName;
    final orderValue = order;
    if (orderValue != null) {
      map['order'] = orderValue;
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    final timestampValueValue = timestampValue;
    if (timestampValueValue != null) {
      map['timestampValue'] = timestampValueValue;
    }
    return map;
  }

  factory TagField.fromMap(Map<String, dynamic> map) {
    return TagField(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      doubleValue:
          map['doubleValue'] == null ? null : map['doubleValue'] as double,
      enumValue: map['enumValue'] == null ? null : map['enumValue'] as String,
      fieldName: map['fieldName'] as String,
      order: map['order'] == null ? null : map['order'] as int,
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
      timestampValue: map['timestampValue'] == null
          ? null
          : map['timestampValue'] as String,
    );
  }
}
