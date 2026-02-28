// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_grpc_route_match_metadata_match.dart';

class RouteSpecGrpcRouteMatchMetadata {
  /// If `true`, the match is on the opposite of the `match` criteria. Default is `false`.
  final bool? invert;

  /// Data to match from the request.
  final RouteSpecGrpcRouteMatchMetadataMatch? match;

  /// Name of the route. Must be between 1 and 50 characters in length.
  final String name;

  /// Creates a new [RouteSpecGrpcRouteMatchMetadata].
  /// [invert] If `true`, the match is on the opposite of the `match` criteria. Default is `false`.
  /// [match] Data to match from the request.
  /// [name] Name of the route. Must be between 1 and 50 characters in length.
  RouteSpecGrpcRouteMatchMetadata({
    this.invert,
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final invertValue = invert;
    if (invertValue != null) {
      map['invert'] = invertValue;
    }
    final matchValue = match;
    if (matchValue != null) {
      map['match'] = matchValue.toMap();
    }
    map['name'] = name;
    return map;
  }

  factory RouteSpecGrpcRouteMatchMetadata.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteMatchMetadata(
      invert: map['invert'] == null ? null : map['invert'] as bool,
      match: map['match'] == null
          ? null
          : RouteSpecGrpcRouteMatchMetadataMatch.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
