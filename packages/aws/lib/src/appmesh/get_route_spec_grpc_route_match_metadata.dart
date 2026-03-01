// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_match_metadata_match.dart';

class GetRouteSpecGrpcRouteMatchMetadata {
  final bool invert;
  final List<GetRouteSpecGrpcRouteMatchMetadataMatch> matches;

  /// Name of the route.
  final String name;

  /// Creates a new [GetRouteSpecGrpcRouteMatchMetadata].
  /// [invert] Required.
  /// [matches] Required.
  /// [name] Name of the route.
  GetRouteSpecGrpcRouteMatchMetadata({
    required this.invert,
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invert': invert,
      'matches':
          pulumi.Input.encodeList<
            GetRouteSpecGrpcRouteMatchMetadataMatch,
            Map<String, dynamic>
          >(matches, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetRouteSpecGrpcRouteMatchMetadata.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteMatchMetadata(
      invert: map['invert'] as bool,
      matches: pulumi.Input.decodeList<GetRouteSpecGrpcRouteMatchMetadataMatch>(
        map['matches'],
        (value) => GetRouteSpecGrpcRouteMatchMetadataMatch.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] as String,
    );
  }
}
