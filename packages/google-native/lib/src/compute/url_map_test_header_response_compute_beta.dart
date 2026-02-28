// ignore_for_file: unused_element, unnecessary_cast

/// HTTP headers used in UrlMapTests.
class UrlMapTestHeaderResponseComputeBeta {
  /// Header name.
  final String name;

  /// Header value.
  final String value;

  /// Creates a new [UrlMapTestHeaderResponseComputeBeta].
  /// [name] Header name.
  /// [value] Header value.
  UrlMapTestHeaderResponseComputeBeta({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory UrlMapTestHeaderResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return UrlMapTestHeaderResponseComputeBeta(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
