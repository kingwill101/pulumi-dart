// ignore_for_file: unused_element, unnecessary_cast

class URLMapTestHeader {
  /// Header name.
  final String name;

  /// Header value.
  final String value;

  /// Creates a new [URLMapTestHeader].
  /// [name] Header name.
  /// [value] Header value.
  URLMapTestHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory URLMapTestHeader.fromMap(Map<String, dynamic> map) {
    return URLMapTestHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
