// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_route_header_match_type_networkservices_v1beta1.dart';

/// A match against a collection of headers.
class GrpcRouteHeaderMatchNetworkservicesV1beta1 {
  /// The key of the header.
  final String key;

  /// Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  final GrpcRouteHeaderMatchTypeNetworkservicesV1beta1? type;

  /// The value of the header.
  final String value;

  /// Creates a new [GrpcRouteHeaderMatchNetworkservicesV1beta1].
  /// [key] The key of the header.
  /// [type] Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.
  /// [value] The value of the header.
  GrpcRouteHeaderMatchNetworkservicesV1beta1({
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

  factory GrpcRouteHeaderMatchNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GrpcRouteHeaderMatchNetworkservicesV1beta1(
      key: map['key'] as String,
      type: map['type'] == null
          ? null
          : GrpcRouteHeaderMatchTypeNetworkservicesV1beta1.fromValue(
              map['type'] as String),
      value: map['value'] as String,
    );
  }
}
