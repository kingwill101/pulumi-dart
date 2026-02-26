// ignore_for_file: unused_element, unnecessary_cast

/// [Deprecated] This message specifies a header location to extract JWT token. This message specifies a header location to extract JWT token.
class JwtHeaderResponse {
  /// The HTTP header name.
  final String name;

  /// The value prefix. The value format is "value_prefix" For example, for "Authorization: Bearer ", value_prefix="Bearer " with a space at the end.
  final String valuePrefix;

  JwtHeaderResponse({
    required this.name,
    required this.valuePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['valuePrefix'] = valuePrefix;
    return map;
  }

  factory JwtHeaderResponse.fromMap(Map<String, dynamic> map) {
    return JwtHeaderResponse(
      name: map['name'] as String,
      valuePrefix: map['valuePrefix'] as String,
    );
  }
}
