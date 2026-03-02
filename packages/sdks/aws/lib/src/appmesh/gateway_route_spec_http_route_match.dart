// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_match_header.dart';
import 'gateway_route_spec_http_route_match_hostname.dart';
import 'gateway_route_spec_http_route_match_path.dart';
import 'gateway_route_spec_http_route_match_query_parameter.dart';

class GatewayRouteSpecHttpRouteMatch {
  /// Client request headers to match on.
  final pulumi.Input<List<GatewayRouteSpecHttpRouteMatchHeader>>? headers;
  /// Host name to match on.
  final pulumi.Input<GatewayRouteSpecHttpRouteMatchHostname>? hostname;
  /// Client request path to match on.
  final pulumi.Input<GatewayRouteSpecHttpRouteMatchPath>? path;
  /// The port number to match from the request.
  final pulumi.Input<int>? port;
  /// Path to match requests with. This parameter must always start with `/`, which by itself matches all requests to the virtual service name.
  final pulumi.Input<String>? prefix;
  /// Client request query parameters to match on.
  final pulumi.Input<List<GatewayRouteSpecHttpRouteMatchQueryParameter>>? queryParameters;

  /// Creates a new [GatewayRouteSpecHttpRouteMatch].
  /// [headers] Client request headers to match on.
  /// [hostname] Host name to match on.
  /// [path] Client request path to match on.
  /// [port] The port number to match from the request.
  /// [prefix] Path to match requests with. This parameter must always start with `/`, which by itself matches all requests to the virtual service name.
  /// [queryParameters] Client request query parameters to match on.
  GatewayRouteSpecHttpRouteMatch({
    this.headers,
    this.hostname,
    this.path,
    this.port,
    this.prefix,
    this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<GatewayRouteSpecHttpRouteMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GatewayRouteSpecHttpRouteMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRouteMatchHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'path': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRouteMatchPath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'port': ?port,
      'prefix': ?prefix,
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<GatewayRouteSpecHttpRouteMatchQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<GatewayRouteSpecHttpRouteMatchQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GatewayRouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatch(
      headers: map['headers'] == null ? null : ((pulumi.Input.decodeList<GatewayRouteSpecHttpRouteMatchHeader>(map['headers']!, (value) => GatewayRouteSpecHttpRouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      hostname: map['hostname'] == null ? null : ((GatewayRouteSpecHttpRouteMatchHostname.fromMap((map['hostname']! as Map).cast<String, dynamic>())).input()).input(),
      path: map['path'] == null ? null : ((GatewayRouteSpecHttpRouteMatchPath.fromMap((map['path']! as Map).cast<String, dynamic>())).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      prefix: map['prefix'] == null ? null : ((map['prefix'] as String).input()).input(),
      queryParameters: map['queryParameters'] == null ? null : ((pulumi.Input.decodeList<GatewayRouteSpecHttpRouteMatchQueryParameter>(map['queryParameters']!, (value) => GatewayRouteSpecHttpRouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

