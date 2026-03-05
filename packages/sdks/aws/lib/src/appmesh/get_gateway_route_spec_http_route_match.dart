// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_match_header.dart';
import 'get_gateway_route_spec_http_route_match_hostname.dart';
import 'get_gateway_route_spec_http_route_match_path.dart';
import 'get_gateway_route_spec_http_route_match_query_parameter.dart';

class GetGatewayRouteSpecHttpRouteMatch {
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteMatchHeader>> headers;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteMatchHostname>> hostnames;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteMatchPath>> paths;
  final pulumi.Input<int> port;
  final pulumi.Input<String> prefix;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteMatchQueryParameter>> queryParameters;

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
    return <String, dynamic>{
      'headers': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostnames': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteMatchHostname>, List<Map<String, dynamic>>>(hostnames, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteMatchHostname, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paths': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteMatchPath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteMatchPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': port,
      'prefix': prefix,
      'queryParameters': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteMatchQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteMatchQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatch(
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchHeader>(map['headers']!, (value) => GetGatewayRouteSpecHttpRouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))),
      hostnames: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchHostname>(map['hostnames']!, (value) => GetGatewayRouteSpecHttpRouteMatchHostname.fromMap((value as Map).cast<String, dynamic>()))),
      paths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchPath>(map['paths']!, (value) => GetGatewayRouteSpecHttpRouteMatchPath.fromMap((value as Map).cast<String, dynamic>()))),
      port: pulumi.Input.fromValue(map['port'] as int),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      queryParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchQueryParameter>(map['queryParameters']!, (value) => GetGatewayRouteSpecHttpRouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

