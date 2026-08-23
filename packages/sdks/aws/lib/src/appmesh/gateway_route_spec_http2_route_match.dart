// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http2_route_match_header.dart';
import 'gateway_route_spec_http2_route_match_hostname.dart';
import 'gateway_route_spec_http2_route_match_path.dart';
import 'gateway_route_spec_http2_route_match_query_parameter.dart';

class GatewayRouteSpecHttp2RouteMatch {
  /// Client request headers to match on. See `spec.http2_route.match.header` Block for details.
  final pulumi.Input<List<GatewayRouteSpecHttp2RouteMatchHeader>>? headers;
  /// Host name to match on. See `spec.http2_route.match.hostname` Block for details.
  final pulumi.Input<GatewayRouteSpecHttp2RouteMatchHostname>? hostname;
  /// Client request path to match on. See `spec.http2_route.match.path` Block for details.
  final pulumi.Input<GatewayRouteSpecHttp2RouteMatchPath>? path;
  /// Port number to match from the request.
  final pulumi.Input<int>? port;
  /// Header value sent by the client must begin with the specified characters.
  final pulumi.Input<String>? prefix;
  /// Client request query parameters to match on. See `spec.http2_route.match.query_parameter` Block for details.
  final pulumi.Input<List<GatewayRouteSpecHttp2RouteMatchQueryParameter>>? queryParameters;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatch].
  /// [headers] Client request headers to match on. See `spec.http2_route.match.header` Block for details.
  /// [hostname] Host name to match on. See `spec.http2_route.match.hostname` Block for details.
  /// [path] Client request path to match on. See `spec.http2_route.match.path` Block for details.
  /// [port] Port number to match from the request.
  /// [prefix] Header value sent by the client must begin with the specified characters.
  /// [queryParameters] Client request query parameters to match on. See `spec.http2_route.match.query_parameter` Block for details.
  const GatewayRouteSpecHttp2RouteMatch({
    this.headers,
    this.hostname,
    this.path,
    this.port,
    this.prefix,
    this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<GatewayRouteSpecHttp2RouteMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GatewayRouteSpecHttp2RouteMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttp2RouteMatchHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'path': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttp2RouteMatchPath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'port': ?port,
      'prefix': ?prefix,
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<GatewayRouteSpecHttp2RouteMatchQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<GatewayRouteSpecHttp2RouteMatchQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GatewayRouteSpecHttp2RouteMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatch(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GatewayRouteSpecHttp2RouteMatchHeader>(guardedValue, (value) => GatewayRouteSpecHttp2RouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttp2RouteMatchHostname.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttp2RouteMatchPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GatewayRouteSpecHttp2RouteMatchQueryParameter>(guardedValue, (value) => GatewayRouteSpecHttp2RouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
