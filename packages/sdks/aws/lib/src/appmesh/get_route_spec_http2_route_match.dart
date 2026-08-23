// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_match_header.dart';
import 'get_route_spec_http2_route_match_path.dart';
import 'get_route_spec_http2_route_match_query_parameter.dart';

class GetRouteSpecHttp2RouteMatch {
  final pulumi.Input<List<GetRouteSpecHttp2RouteMatchHeader>> headers;
  final pulumi.Input<String> method;
  final pulumi.Input<List<GetRouteSpecHttp2RouteMatchPath>> paths;
  final pulumi.Input<int> port;
  final pulumi.Input<String> prefix;
  final pulumi.Input<List<GetRouteSpecHttp2RouteMatchQueryParameter>> queryParameters;
  final pulumi.Input<String> scheme;

  /// Creates a new [GetRouteSpecHttp2RouteMatch].
  /// [headers] Required.
  /// [method] Required.
  /// [paths] Required.
  /// [port] Required.
  /// [prefix] Required.
  /// [queryParameters] Required.
  /// [scheme] Required.
  const GetRouteSpecHttp2RouteMatch({
    required this.headers,
    required this.method,
    required this.paths,
    required this.port,
    required this.prefix,
    required this.queryParameters,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'method': method,
      'paths': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteMatchPath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteMatchPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': port,
      'prefix': prefix,
      'queryParameters': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteMatchQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteMatchQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scheme': scheme,
    };
  }

  factory GetRouteSpecHttp2RouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatch(
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecHttp2RouteMatchHeader>(map['headers']!, (value) => GetRouteSpecHttp2RouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))),
      method: pulumi.Input.fromValue(map['method'] as String),
      paths: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecHttp2RouteMatchPath>(map['paths']!, (value) => GetRouteSpecHttp2RouteMatchPath.fromMap((value as Map).cast<String, dynamic>()))),
      port: pulumi.Input.fromValue(map['port'] as int),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      queryParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecHttp2RouteMatchQueryParameter>(map['queryParameters']!, (value) => GetRouteSpecHttp2RouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
    );
  }
}
