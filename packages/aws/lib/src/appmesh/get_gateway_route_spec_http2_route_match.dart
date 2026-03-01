// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_match_header.dart';
import 'get_gateway_route_spec_http2_route_match_hostname.dart';
import 'get_gateway_route_spec_http2_route_match_path.dart';
import 'get_gateway_route_spec_http2_route_match_query_parameter.dart';

class GetGatewayRouteSpecHttp2RouteMatch {
  final List<GetGatewayRouteSpecHttp2RouteMatchHeader> headers;
  final List<GetGatewayRouteSpecHttp2RouteMatchHostname> hostnames;
  final List<GetGatewayRouteSpecHttp2RouteMatchPath> paths;
  final int port;
  final String prefix;
  final List<GetGatewayRouteSpecHttp2RouteMatchQueryParameter> queryParameters;

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
      'headers':
          pulumi.Input.encodeList<
            GetGatewayRouteSpecHttp2RouteMatchHeader,
            Map<String, dynamic>
          >(headers, (value) => value.toMap()),
      'hostnames':
          pulumi.Input.encodeList<
            GetGatewayRouteSpecHttp2RouteMatchHostname,
            Map<String, dynamic>
          >(hostnames, (value) => value.toMap()),
      'paths':
          pulumi.Input.encodeList<
            GetGatewayRouteSpecHttp2RouteMatchPath,
            Map<String, dynamic>
          >(paths, (value) => value.toMap()),
      'port': port,
      'prefix': prefix,
      'queryParameters':
          pulumi.Input.encodeList<
            GetGatewayRouteSpecHttp2RouteMatchQueryParameter,
            Map<String, dynamic>
          >(queryParameters, (value) => value.toMap()),
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatch(
      headers:
          pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchHeader>(
            map['headers'],
            (value) => GetGatewayRouteSpecHttp2RouteMatchHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      hostnames:
          pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchHostname>(
            map['hostnames'],
            (value) => GetGatewayRouteSpecHttp2RouteMatchHostname.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      paths: pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchPath>(
        map['paths'],
        (value) => GetGatewayRouteSpecHttp2RouteMatchPath.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      port: map['port'] as int,
      prefix: map['prefix'] as String,
      queryParameters:
          pulumi.Input.decodeList<
            GetGatewayRouteSpecHttp2RouteMatchQueryParameter
          >(
            map['queryParameters'],
            (value) => GetGatewayRouteSpecHttp2RouteMatchQueryParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
