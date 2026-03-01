// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_match_header.dart';
import 'gateway_route_spec_http_route_match_hostname.dart';
import 'gateway_route_spec_http_route_match_path.dart';
import 'gateway_route_spec_http_route_match_query_parameter.dart';

class GatewayRouteSpecHttpRouteMatch {
  /// Client request headers to match on.
  final List<GatewayRouteSpecHttpRouteMatchHeader>? headers;
  /// Host name to match on.
  final GatewayRouteSpecHttpRouteMatchHostname? hostname;
  /// Client request path to match on.
  final GatewayRouteSpecHttpRouteMatchPath? path;
  /// The port number to match from the request.
  final int? port;
  /// Path to match requests with. This parameter must always start with `/`, which by itself matches all requests to the virtual service name.
  final String? prefix;
  /// Client request query parameters to match on.
  final List<GatewayRouteSpecHttpRouteMatchQueryParameter>? queryParameters;

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
      'headers': ?headers == null ? null : pulumi.Input.encodeList<GatewayRouteSpecHttpRouteMatchHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'hostname': ?hostname == null ? null : hostname!.toMap(),
      'path': ?path == null ? null : path!.toMap(),
      'port': ?port,
      'prefix': ?prefix,
      'queryParameters': ?queryParameters == null ? null : pulumi.Input.encodeList<GatewayRouteSpecHttpRouteMatchQueryParameter, Map<String, dynamic>>(queryParameters!, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatch(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<GatewayRouteSpecHttpRouteMatchHeader>(map['headers'], (value) => GatewayRouteSpecHttpRouteMatchHeader.fromMap((value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null ? null : GatewayRouteSpecHttpRouteMatchHostname.fromMap((map['hostname'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : GatewayRouteSpecHttpRouteMatchPath.fromMap((map['path'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      queryParameters: map['queryParameters'] == null ? null : pulumi.Input.decodeList<GatewayRouteSpecHttpRouteMatchQueryParameter>(map['queryParameters'], (value) => GatewayRouteSpecHttpRouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

