// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_route_header_match_type.dart';

/// A match against a collection of headers.
class GrpcRouteHeaderMatch {
  /// The key of the header.
  final String key;

  /// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  final GrpcRouteHeaderMatchType? type;

  /// The value of the header.
  final String value;

  GrpcRouteHeaderMatch({
    required this.key,
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    map['value'] = value;
    return map;
  }

  factory GrpcRouteHeaderMatch.fromMap(Map<String, dynamic> map) {
    return GrpcRouteHeaderMatch(
      key: map['key'] as String,
      type: map['type'] == null
          ? null
          : GrpcRouteHeaderMatchType.fromValue(map['type'] as String),
      value: map['value'] as String,
    );
  }
}
