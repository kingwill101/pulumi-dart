// ignore_for_file: unused_element, unnecessary_cast

/// HTTP headers used in UrlMapTests.
class UrlMapTestHeaderResponseComputeV1 {
  /// Header name.
  final String name;

  /// Header value.
  final String value;

  UrlMapTestHeaderResponseComputeV1({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory UrlMapTestHeaderResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return UrlMapTestHeaderResponseComputeV1(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
