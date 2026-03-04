// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_match_metadata.dart';

class GetRouteSpecGrpcRouteMatch {
  final pulumi.Input<List<GetRouteSpecGrpcRouteMatchMetadata>> metadatas;
  final pulumi.Input<String> methodName;
  final pulumi.Input<int> port;
  final pulumi.Input<String> prefix;
  final pulumi.Input<String> serviceName;

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
    return <String, dynamic>{
      'metadatas':
          pulumi.Input.mapInputValue<
            List<GetRouteSpecGrpcRouteMatchMetadata>,
            List<Map<String, dynamic>>
          >(
            metadatas,
            (value) =>
                pulumi.Input.encodeList<
                  GetRouteSpecGrpcRouteMatchMetadata,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'methodName': methodName,
      'port': port,
      'prefix': prefix,
      'serviceName': serviceName,
    };
  }

  factory GetRouteSpecGrpcRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteMatch(
      metadatas: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRouteSpecGrpcRouteMatchMetadata>(
          map['metadatas']!,
          (value) => GetRouteSpecGrpcRouteMatchMetadata.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      methodName: pulumi.Input.fromValue(map['methodName'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
