// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_match_header.dart';
import 'get_route_spec_http_route_match_path.dart';
import 'get_route_spec_http_route_match_query_parameter.dart';

class GetRouteSpecHttpRouteMatch {
  final pulumi.Input<List<GetRouteSpecHttpRouteMatchHeader>> headers;
  final pulumi.Input<String> method;
  final pulumi.Input<List<GetRouteSpecHttpRouteMatchPath>> paths;
  final pulumi.Input<int> port;
  final pulumi.Input<String> prefix;
  final pulumi.Input<List<GetRouteSpecHttpRouteMatchQueryParameter>> queryParameters;
  final pulumi.Input<String> scheme;

  /// Creates a new [GetRouteSpecHttpRouteMatch].
  /// [headers] Required.
  /// [method] Required.
  /// [paths] Required.
  /// [port] Required.
  /// [prefix] Required.
  /// [queryParameters] Required.
  /// [scheme] Required.
  GetRouteSpecHttpRouteMatch({
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
      'headers': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'method': method,
      'paths': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteMatchPath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteMatchPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': port,
      'prefix': prefix,
      'queryParameters': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteMatchQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteMatchQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scheme': scheme,
    };
  }

  factory GetRouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatch(
      headers: (pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchHeader>(map['headers']!, (value) => GetRouteSpecHttpRouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      method: (map['method'] as String).input(),
      paths: (pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchPath>(map['paths']!, (value) => GetRouteSpecHttpRouteMatchPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      port: (map['port'] as int).input(),
      prefix: (map['prefix'] as String).input(),
      queryParameters: (pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchQueryParameter>(map['queryParameters']!, (value) => GetRouteSpecHttpRouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scheme: (map['scheme'] as String).input(),
    );
  }
}

