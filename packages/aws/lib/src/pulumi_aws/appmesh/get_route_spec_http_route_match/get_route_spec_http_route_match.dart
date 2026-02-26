// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_http_route_match_header/get_route_spec_http_route_match_header.dart';
import '../get_route_spec_http_route_match_path/get_route_spec_http_route_match_path.dart';
import '../get_route_spec_http_route_match_query_parameter/get_route_spec_http_route_match_query_parameter.dart';

class GetRouteSpecHttpRouteMatch {
  final List<GetRouteSpecHttpRouteMatchHeader> headers;
  final String method;
  final List<GetRouteSpecHttpRouteMatchPath> paths;
  final int port;
  final String prefix;
  final List<GetRouteSpecHttpRouteMatchQueryParameter> queryParameters;
  final String scheme;

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
    final map = <String, dynamic>{};
    map['headers'] = Input.encodeList<GetRouteSpecHttpRouteMatchHeader,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    map['method'] = method;
    map['paths'] =
        Input.encodeList<GetRouteSpecHttpRouteMatchPath, Map<String, dynamic>>(
            paths, (value) => value.toMap());
    map['port'] = port;
    map['prefix'] = prefix;
    map['queryParameters'] = Input.encodeList<
        GetRouteSpecHttpRouteMatchQueryParameter,
        Map<String, dynamic>>(queryParameters, (value) => value.toMap());
    map['scheme'] = scheme;
    return map;
  }

  factory GetRouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatch(
      headers: Input.decodeList<GetRouteSpecHttpRouteMatchHeader>(
          map['headers'],
          (value) => GetRouteSpecHttpRouteMatchHeader.fromMap(
              (value as Map).cast<String, dynamic>())),
      method: map['method'] as String,
      paths: Input.decodeList<GetRouteSpecHttpRouteMatchPath>(
          map['paths'],
          (value) => GetRouteSpecHttpRouteMatchPath.fromMap(
              (value as Map).cast<String, dynamic>())),
      port: map['port'] as int,
      prefix: map['prefix'] as String,
      queryParameters:
          Input.decodeList<GetRouteSpecHttpRouteMatchQueryParameter>(
              map['queryParameters'],
              (value) => GetRouteSpecHttpRouteMatchQueryParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      scheme: map['scheme'] as String,
    );
  }
}
