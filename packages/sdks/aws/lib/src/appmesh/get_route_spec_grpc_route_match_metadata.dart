// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_match_metadata_match.dart';

class GetRouteSpecGrpcRouteMatchMetadata {
  final pulumi.Input<bool> invert;
  final pulumi.Input<List<GetRouteSpecGrpcRouteMatchMetadataMatch>> matches;
  /// Name of the route.
  final pulumi.Input<String> name;

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
      'matches': pulumi.Input.mapInputValue<List<GetRouteSpecGrpcRouteMatchMetadataMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetRouteSpecGrpcRouteMatchMetadataMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetRouteSpecGrpcRouteMatchMetadata.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteMatchMetadata(
      invert: (map['invert'] as bool).input(),
      matches: (pulumi.Input.decodeList<GetRouteSpecGrpcRouteMatchMetadataMatch>(map['matches'], (value) => GetRouteSpecGrpcRouteMatchMetadataMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

