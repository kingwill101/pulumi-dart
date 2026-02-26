// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../route_spec_grpc_route_match_metadata/route_spec_grpc_route_match_metadata.dart';

class RouteSpecGrpcRouteMatch {
  /// Data to match from the gRPC request.
  final List<RouteSpecGrpcRouteMatchMetadata>? metadatas;

  /// Method name to match from the request. If you specify a name, you must also specify a <span pulumi-lang-nodejs="`serviceName`" pulumi-lang-dotnet="`ServiceName`" pulumi-lang-go="`serviceName`" pulumi-lang-python="`service_name`" pulumi-lang-yaml="`serviceName`" pulumi-lang-java="`serviceName`">`service_name`</span>.
  final String? methodName;

  /// The port number to match from the request.
  final int? port;
  final String? prefix;

  /// Fully qualified domain name for the service to match from the request.
  final String? serviceName;

  RouteSpecGrpcRouteMatch({
    this.metadatas,
    this.methodName,
    this.port,
    this.prefix,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadatasValue = metadatas;
    if (metadatasValue != null) {
      map['metadatas'] = Input.encodeList<RouteSpecGrpcRouteMatchMetadata,
          Map<String, dynamic>>(metadatasValue, (value) => value.toMap());
    }
    final methodNameValue = methodName;
    if (methodNameValue != null) {
      map['methodName'] = methodNameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    return map;
  }

  factory RouteSpecGrpcRouteMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteMatch(
      metadatas: map['metadatas'] == null
          ? null
          : Input.decodeList<RouteSpecGrpcRouteMatchMetadata>(
              map['metadatas'],
              (value) => RouteSpecGrpcRouteMatchMetadata.fromMap(
                  (value as Map).cast<String, dynamic>())),
      methodName:
          map['methodName'] == null ? null : map['methodName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}
