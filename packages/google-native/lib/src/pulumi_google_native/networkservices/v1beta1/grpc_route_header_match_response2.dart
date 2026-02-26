// ignore_for_file: unused_element, unnecessary_cast

/// A match against a collection of headers.
class GrpcRouteHeaderMatchResponse2 {
  /// The key of the header.
  final String key;

  /// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  final String type;

  /// The value of the header.
  final String value;

  GrpcRouteHeaderMatchResponse2({
    required this.key,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory GrpcRouteHeaderMatchResponse2.fromMap(Map<String, dynamic> map) {
    return GrpcRouteHeaderMatchResponse2(
      key: map['key'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
