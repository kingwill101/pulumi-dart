// ignore_for_file: unused_element, unnecessary_cast


class GetCheckItemConfigsConfigDescription {
  /// The type of the description of the check item. Valid value:*   **text**.
  final String type;
  /// The content of the description for the check item when the Type parameter is text.
  final String value;

  /// Creates a new [GetCheckItemConfigsConfigDescription].
  /// [type] The type of the description of the check item. Valid value:*   **text**.
  /// [value] The content of the description for the check item when the Type parameter is text.
  GetCheckItemConfigsConfigDescription({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetCheckItemConfigsConfigDescription.fromMap(Map<String, dynamic> map) {
    return GetCheckItemConfigsConfigDescription(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

