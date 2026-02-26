// ignore_for_file: unused_element, unnecessary_cast

/// Header details for a given header to be added to Endpoint.
class HeaderResponse4 {
  /// Key of Header.
  final String key;

  /// Value of Header.
  final String value;

  HeaderResponse4({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory HeaderResponse4.fromMap(Map<String, dynamic> map) {
    return HeaderResponse4(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
