// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_route_header_match_type2.dart';

/// A match against a collection of headers.
class GrpcRouteHeaderMatch2 {
  /// The key of the header.
  final String key;

  /// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  final GrpcRouteHeaderMatchType2? type;

  /// The value of the header.
  final String value;

  GrpcRouteHeaderMatch2({
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

  factory GrpcRouteHeaderMatch2.fromMap(Map<String, dynamic> map) {
    return GrpcRouteHeaderMatch2(
      key: map['key'] as String,
      type: map['type'] == null
          ? null
          : GrpcRouteHeaderMatchType2.fromValue(map['type'] as String),
      value: map['value'] as String,
    );
  }
}
