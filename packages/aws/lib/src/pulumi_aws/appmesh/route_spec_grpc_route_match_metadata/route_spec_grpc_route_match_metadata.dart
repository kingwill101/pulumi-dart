// ignore_for_file: unused_element, unnecessary_cast

import '../route_spec_grpc_route_match_metadata_match/route_spec_grpc_route_match_metadata_match.dart';

class RouteSpecGrpcRouteMatchMetadata {
  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the match is on the opposite of the <span pulumi-lang-nodejs="`match`" pulumi-lang-dotnet="`Match`" pulumi-lang-go="`match`" pulumi-lang-python="`match`" pulumi-lang-yaml="`match`" pulumi-lang-java="`match`">`match`</span> criteria. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? invert;

  /// Data to match from the request.
  final RouteSpecGrpcRouteMatchMetadataMatch? match;

  /// Name of the route. Must be between 1 and 50 characters in length.
  final String name;

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
