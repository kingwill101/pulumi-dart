// ignore_for_file: unused_element, unnecessary_cast

class GrpcRouteRuleMatchHeader {
  /// Required. The key of the header.
  final String key;

  /// The type of match.
  /// Default value is `EXACT`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `EXACT`, `REGULAR_EXPRESSION`.
  final String? type;

  /// Required. The value of the header.
  final String value;

  /// Creates a new [GrpcRouteRuleMatchHeader].
  /// [key] Required. The key of the header.
  /// [type] The type of match.
  /// [value] Required. The value of the header.
  GrpcRouteRuleMatchHeader({
    required this.key,
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    map['value'] = value;
    return map;
  }

  factory GrpcRouteRuleMatchHeader.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleMatchHeader(
      key: map['key'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] as String,
    );
  }
}
