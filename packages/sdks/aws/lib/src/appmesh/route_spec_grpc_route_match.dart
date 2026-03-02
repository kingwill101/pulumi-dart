// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_grpc_route_match_metadata.dart';

class RouteSpecGrpcRouteMatch {
  /// Data to match from the gRPC request.
  final pulumi.Input<List<RouteSpecGrpcRouteMatchMetadata>>? metadatas;
  /// Method name to match from the request. If you specify a name, you must also specify a `service_name`.
  final pulumi.Input<String>? methodName;
  /// The port number to match from the request.
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? prefix;
  /// Fully qualified domain name for the service to match from the request.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [RouteSpecGrpcRouteMatch].
  /// [metadatas] Data to match from the gRPC request.
  /// [methodName] Method name to match from the request. If you specify a name, you must also specify a `service_name`.
  /// [port] The port number to match from the request.
  /// [prefix] Optional.
  /// [serviceName] Fully qualified domain name for the service to match from the request.
  RouteSpecGrpcRouteMatch({
    this.metadatas,
    this.methodName,
    this.port,
    this.prefix,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<RouteSpecGrpcRouteMatchMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<RouteSpecGrpcRouteMatchMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'methodName': ?methodName,
      'port': ?port,
      'prefix': ?prefix,
      'serviceName': ?serviceName,
    };
  }

  factory RouteSpecGrpcRouteMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteMatch(
      metadatas: map['metadatas'] == null ? null : (pulumi.Input.decodeList<RouteSpecGrpcRouteMatchMetadata>(map['metadatas'], (value) => RouteSpecGrpcRouteMatchMetadata.fromMap((value as Map).cast<String, dynamic>()))).input(),
      methodName: map['methodName'] == null ? null : (map['methodName'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
    );
  }
}

