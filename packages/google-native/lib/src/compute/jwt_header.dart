// ignore_for_file: unused_element, unnecessary_cast

/// [Deprecated] This message specifies a header location to extract JWT token. This message specifies a header location to extract JWT token.
class JwtHeader {
  /// The HTTP header name.
  final String? name;

  /// The value prefix. The value format is "value_prefix" For example, for "Authorization: Bearer ", value_prefix="Bearer " with a space at the end.
  final String? valuePrefix;

  /// Creates a new [JwtHeader].
  /// [name] The HTTP header name.
  /// [valuePrefix] The value prefix. The value format is "value_prefix" For example, for "Authorization: Bearer ", value_prefix="Bearer " with a space at the end.
  JwtHeader({this.name, this.valuePrefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'valuePrefix': ?valuePrefix};
  }

  factory JwtHeader.fromMap(Map<String, dynamic> map) {
    return JwtHeader(
      name: map['name'] == null ? null : map['name'] as String,
      valuePrefix: map['valuePrefix'] == null
          ? null
          : map['valuePrefix'] as String,
    );
  }
}
