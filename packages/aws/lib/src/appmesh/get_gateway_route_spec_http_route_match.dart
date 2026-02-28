// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_match_header.dart';
import 'get_gateway_route_spec_http_route_match_hostname.dart';
import 'get_gateway_route_spec_http_route_match_path.dart';
import 'get_gateway_route_spec_http_route_match_query_parameter.dart';

class GetGatewayRouteSpecHttpRouteMatch {
  final List<GetGatewayRouteSpecHttpRouteMatchHeader> headers;
  final List<GetGatewayRouteSpecHttpRouteMatchHostname> hostnames;
  final List<GetGatewayRouteSpecHttpRouteMatchPath> paths;
  final int port;
  final String prefix;
  final List<GetGatewayRouteSpecHttpRouteMatchQueryParameter> queryParameters;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatch].
  /// [headers] Required.
  /// [hostnames] Required.
  /// [paths] Required.
  /// [port] Required.
  /// [prefix] Required.
  /// [queryParameters] Required.
  GetGatewayRouteSpecHttpRouteMatch({
    required this.headers,
    required this.hostnames,
    required this.paths,
    required this.port,
    required this.prefix,
    required this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headers'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteMatchHeader,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    map['hostnames'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteMatchHostname,
        Map<String, dynamic>>(hostnames, (value) => value.toMap());
    map['paths'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteMatchPath,
        Map<String, dynamic>>(paths, (value) => value.toMap());
    map['port'] = port;
    map['prefix'] = prefix;
    map['queryParameters'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteMatchQueryParameter,
        Map<String, dynamic>>(queryParameters, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatch(
      headers: pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchHeader>(
          map['headers'],
          (value) => GetGatewayRouteSpecHttpRouteMatchHeader.fromMap(
              (value as Map).cast<String, dynamic>())),
      hostnames:
          pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchHostname>(
              map['hostnames'],
              (value) => GetGatewayRouteSpecHttpRouteMatchHostname.fromMap(
                  (value as Map).cast<String, dynamic>())),
      paths: pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchPath>(
          map['paths'],
          (value) => GetGatewayRouteSpecHttpRouteMatchPath.fromMap(
              (value as Map).cast<String, dynamic>())),
      port: map['port'] as int,
      prefix: map['prefix'] as String,
      queryParameters: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttpRouteMatchQueryParameter>(
          map['queryParameters'],
          (value) => GetGatewayRouteSpecHttpRouteMatchQueryParameter.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
