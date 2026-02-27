// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../gateway_route_spec_http2_route_match_header/gateway_route_spec_http2_route_match_header.dart';
import '../gateway_route_spec_http2_route_match_hostname/gateway_route_spec_http2_route_match_hostname.dart';
import '../gateway_route_spec_http2_route_match_path/gateway_route_spec_http2_route_match_path.dart';
import '../gateway_route_spec_http2_route_match_query_parameter/gateway_route_spec_http2_route_match_query_parameter.dart';

class GatewayRouteSpecHttp2RouteMatch {
  /// Client request headers to match on.
  final List<GatewayRouteSpecHttp2RouteMatchHeader>? headers;

  /// Host name to match on.
  final GatewayRouteSpecHttp2RouteMatchHostname? hostname;

  /// Client request path to match on.
  final GatewayRouteSpecHttp2RouteMatchPath? path;

  /// The port number to match from the request.
  final int? port;

  /// Path to match requests with. This parameter must always start with `/`, which by itself matches all requests to the virtual service name.
  final String? prefix;

  /// Client request query parameters to match on.
  final List<GatewayRouteSpecHttp2RouteMatchQueryParameter>? queryParameters;

  GatewayRouteSpecHttp2RouteMatch({
    this.headers,
    this.hostname,
    this.path,
    this.port,
    this.prefix,
    this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<
          GatewayRouteSpecHttp2RouteMatchHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue.toMap();
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue.toMap();
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final queryParametersValue = queryParameters;
    if (queryParametersValue != null) {
      map['queryParameters'] = pulumi.Input.encodeList<
          GatewayRouteSpecHttp2RouteMatchQueryParameter,
          Map<String, dynamic>>(queryParametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory GatewayRouteSpecHttp2RouteMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatch(
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<GatewayRouteSpecHttp2RouteMatchHeader>(
              map['headers'],
              (value) => GatewayRouteSpecHttp2RouteMatchHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null
          ? null
          : GatewayRouteSpecHttp2RouteMatchHostname.fromMap(
              (map['hostname'] as Map).cast<String, dynamic>()),
      path: map['path'] == null
          ? null
          : GatewayRouteSpecHttp2RouteMatchPath.fromMap(
              (map['path'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      queryParameters: map['queryParameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  GatewayRouteSpecHttp2RouteMatchQueryParameter>(
              map['queryParameters'],
              (value) => GatewayRouteSpecHttp2RouteMatchQueryParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
