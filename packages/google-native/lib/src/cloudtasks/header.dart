// ignore_for_file: unused_element, unnecessary_cast

/// Defines a header message. A header can have a key and a value.
class Header {
  /// The Key of the header.
  final String? key;

  /// The Value of the header.
  final String? value;

  /// Creates a new [Header].
  /// [key] The Key of the header.
  /// [value] The Value of the header.
  Header({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory Header.fromMap(Map<String, dynamic> map) {
    return Header(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
