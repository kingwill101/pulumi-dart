// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_grpc_route_match_metadata.dart';

class RouteSpecGrpcRouteMatch {
  /// Data to match from the gRPC request. See `spec.grpc_route.match.metadata` Block for details.
  final pulumi.Input<List<RouteSpecGrpcRouteMatchMetadata>?>? metadatas;
  /// Method name to match from the request. If you specify a name, you must also specify a `serviceName`.
  final pulumi.Input<String?>? methodName;
  /// Port number to match from the request.
  final pulumi.Input<int?>? port;
  /// Header value sent by the client must begin with the specified characters.
  final pulumi.Input<String?>? prefix;
  /// Fully qualified domain name for the service to match from the request.
  final pulumi.Input<String?>? serviceName;

  /// Creates a new [RouteSpecGrpcRouteMatch].
  /// [metadatas] Data to match from the gRPC request. See `spec.grpc_route.match.metadata` Block for details.
  /// [methodName] Method name to match from the request. If you specify a name, you must also specify a `serviceName`.
  /// [port] Port number to match from the request.
  /// [prefix] Header value sent by the client must begin with the specified characters.
  /// [serviceName] Fully qualified domain name for the service to match from the request.
  const RouteSpecGrpcRouteMatch({
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
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteSpecGrpcRouteMatchMetadata>(guardedValue, (value) => RouteSpecGrpcRouteMatchMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      methodName: (() { final guardedValue = map['methodName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
