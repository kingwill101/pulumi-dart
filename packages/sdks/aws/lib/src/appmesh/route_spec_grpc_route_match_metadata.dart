// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_grpc_route_match_metadata_match.dart';

class RouteSpecGrpcRouteMatchMetadata {
  /// If `true`, the match is on the opposite of the `match` criteria. Default is `false`.
  final pulumi.Input<bool>? invert;
  /// Data to match from the request.
  final pulumi.Input<RouteSpecGrpcRouteMatchMetadataMatch>? match;
  /// Name of the route. Must be between 1 and 50 characters in length.
  final pulumi.Input<String> name;

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
    return <String, dynamic>{
      'invert': ?invert,
      'match': ?pulumi.Input.mapOptionalInputValue<RouteSpecGrpcRouteMatchMetadataMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory RouteSpecGrpcRouteMatchMetadata.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteMatchMetadata(
      invert: (() { final guardedValue = map['invert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecGrpcRouteMatchMetadataMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

