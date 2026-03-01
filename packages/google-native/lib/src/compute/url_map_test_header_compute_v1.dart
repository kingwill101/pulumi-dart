// ignore_for_file: unused_element, unnecessary_cast

/// HTTP headers used in UrlMapTests.
class UrlMapTestHeaderComputeV1 {
  /// Header name.
  final String? name;

  /// Header value.
  final String? value;

  /// Creates a new [UrlMapTestHeaderComputeV1].
  /// [name] Header name.
  /// [value] Header value.
  UrlMapTestHeaderComputeV1({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory UrlMapTestHeaderComputeV1.fromMap(Map<String, dynamic> map) {
    return UrlMapTestHeaderComputeV1(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
