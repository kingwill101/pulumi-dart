// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_match_header.dart';
import 'get_gateway_route_spec_http2_route_match_hostname.dart';
import 'get_gateway_route_spec_http2_route_match_path.dart';
import 'get_gateway_route_spec_http2_route_match_query_parameter.dart';

class GetGatewayRouteSpecHttp2RouteMatch {
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteMatchHeader>> headers;
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteMatchHostname>> hostnames;
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteMatchPath>> paths;
  final pulumi.Input<int> port;
  final pulumi.Input<String> prefix;
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteMatchQueryParameter>> queryParameters;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatch].
  /// [headers] Required.
  /// [hostnames] Required.
  /// [paths] Required.
  /// [port] Required.
  /// [prefix] Required.
  /// [queryParameters] Required.
  GetGatewayRouteSpecHttp2RouteMatch({
    required this.headers,
    required this.hostnames,
    required this.paths,
    required this.port,
    required this.prefix,
    required this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostnames': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteMatchHostname>, List<Map<String, dynamic>>>(hostnames, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteMatchHostname, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paths': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteMatchPath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteMatchPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': port,
      'prefix': prefix,
      'queryParameters': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteMatchQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteMatchQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatch(
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchHeader>(map['headers']!, (value) => GetGatewayRouteSpecHttp2RouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))),
      hostnames: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchHostname>(map['hostnames']!, (value) => GetGatewayRouteSpecHttp2RouteMatchHostname.fromMap((value as Map).cast<String, dynamic>()))),
      paths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchPath>(map['paths']!, (value) => GetGatewayRouteSpecHttp2RouteMatchPath.fromMap((value as Map).cast<String, dynamic>()))),
      port: pulumi.Input.fromValue(map['port'] as int),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      queryParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchQueryParameter>(map['queryParameters']!, (value) => GetGatewayRouteSpecHttp2RouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

