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
      invert: map['invert'] == null ? null : ((map['invert'] as bool).input()).input(),
      match: map['match'] == null ? null : ((RouteSpecGrpcRouteMatchMetadataMatch.fromMap((map['match']! as Map).cast<String, dynamic>())).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

