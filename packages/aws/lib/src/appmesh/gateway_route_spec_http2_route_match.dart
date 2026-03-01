// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http2_route_match_header.dart';
import 'gateway_route_spec_http2_route_match_hostname.dart';
import 'gateway_route_spec_http2_route_match_path.dart';
import 'gateway_route_spec_http2_route_match_query_parameter.dart';

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

  /// Creates a new [GatewayRouteSpecHttp2RouteMatch].
  /// [headers] Client request headers to match on.
  /// [hostname] Host name to match on.
  /// [path] Client request path to match on.
  /// [port] The port number to match from the request.
  /// [prefix] Path to match requests with. This parameter must always start with `/`, which by itself matches all requests to the virtual service name.
  /// [queryParameters] Client request query parameters to match on.
  GatewayRouteSpecHttp2RouteMatch({
    this.headers,
    this.hostname,
    this.path,
    this.port,
    this.prefix,
    this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null
          ? null
          : pulumi.Input.encodeList<
              GatewayRouteSpecHttp2RouteMatchHeader,
              Map<String, dynamic>
            >(headers!, (value) => value.toMap()),
      'hostname': ?hostname == null ? null : hostname!.toMap(),
      'path': ?path == null ? null : path!.toMap(),
      'port': ?port,
      'prefix': ?prefix,
      'queryParameters': ?queryParameters == null
          ? null
          : pulumi.Input.encodeList<
              GatewayRouteSpecHttp2RouteMatchQueryParameter,
              Map<String, dynamic>
            >(queryParameters!, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttp2RouteMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatch(
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<GatewayRouteSpecHttp2RouteMatchHeader>(
              map['headers'],
              (value) => GatewayRouteSpecHttp2RouteMatchHeader.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      hostname: map['hostname'] == null
          ? null
          : GatewayRouteSpecHttp2RouteMatchHostname.fromMap(
              (map['hostname'] as Map).cast<String, dynamic>(),
            ),
      path: map['path'] == null
          ? null
          : GatewayRouteSpecHttp2RouteMatchPath.fromMap(
              (map['path'] as Map).cast<String, dynamic>(),
            ),
      port: map['port'] == null ? null : map['port'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      queryParameters: map['queryParameters'] == null
          ? null
          : pulumi.Input.decodeList<
              GatewayRouteSpecHttp2RouteMatchQueryParameter
            >(
              map['queryParameters'],
              (value) => GatewayRouteSpecHttp2RouteMatchQueryParameter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
