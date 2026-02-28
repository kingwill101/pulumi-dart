// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_match_metadata.dart';

class GetRouteSpecGrpcRouteMatch {
  final List<GetRouteSpecGrpcRouteMatchMetadata> metadatas;
  final String methodName;
  final int port;
  final String prefix;
  final String serviceName;

  /// Creates a new [GetRouteSpecGrpcRouteMatch].
  /// [metadatas] Required.
  /// [methodName] Required.
  /// [port] Required.
  /// [prefix] Required.
  /// [serviceName] Required.
  GetRouteSpecGrpcRouteMatch({
    required this.metadatas,
    required this.methodName,
    required this.port,
    required this.prefix,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadatas'] = pulumi.Input.encodeList<
        GetRouteSpecGrpcRouteMatchMetadata,
        Map<String, dynamic>>(metadatas, (value) => value.toMap());
    map['methodName'] = methodName;
    map['port'] = port;
    map['prefix'] = prefix;
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetRouteSpecGrpcRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteMatch(
      metadatas: pulumi.Input.decodeList<GetRouteSpecGrpcRouteMatchMetadata>(
          map['metadatas'],
          (value) => GetRouteSpecGrpcRouteMatchMetadata.fromMap(
              (value as Map).cast<String, dynamic>())),
      methodName: map['methodName'] as String,
      port: map['port'] as int,
      prefix: map['prefix'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
