// ignore_for_file: unused_element, unnecessary_cast

/// Defines a header message. A header can have a key and a value.
class HeaderResponse3 {
  /// The Key of the header.
  final String key;

  /// The Value of the header.
  final String value;

  HeaderResponse3({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory HeaderResponse3.fromMap(Map<String, dynamic> map) {
    return HeaderResponse3(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
