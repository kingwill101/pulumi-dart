// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_http2_route_match_header/get_route_spec_http2_route_match_header.dart';
import '../get_route_spec_http2_route_match_path/get_route_spec_http2_route_match_path.dart';
import '../get_route_spec_http2_route_match_query_parameter/get_route_spec_http2_route_match_query_parameter.dart';

class GetRouteSpecHttp2RouteMatch {
  final List<GetRouteSpecHttp2RouteMatchHeader> headers;
  final String method;
  final List<GetRouteSpecHttp2RouteMatchPath> paths;
  final int port;
  final String prefix;
  final List<GetRouteSpecHttp2RouteMatchQueryParameter> queryParameters;
  final String scheme;

  GetRouteSpecHttp2RouteMatch({
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
    map['headers'] = Input.encodeList<GetRouteSpecHttp2RouteMatchHeader,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    map['method'] = method;
    map['paths'] =
        Input.encodeList<GetRouteSpecHttp2RouteMatchPath, Map<String, dynamic>>(
            paths, (value) => value.toMap());
    map['port'] = port;
    map['prefix'] = prefix;
    map['queryParameters'] = Input.encodeList<
        GetRouteSpecHttp2RouteMatchQueryParameter,
        Map<String, dynamic>>(queryParameters, (value) => value.toMap());
    map['scheme'] = scheme;
    return map;
  }

  factory GetRouteSpecHttp2RouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatch(
      headers: Input.decodeList<GetRouteSpecHttp2RouteMatchHeader>(
          map['headers'],
          (value) => GetRouteSpecHttp2RouteMatchHeader.fromMap(
              (value as Map).cast<String, dynamic>())),
      method: map['method'] as String,
      paths: Input.decodeList<GetRouteSpecHttp2RouteMatchPath>(
          map['paths'],
          (value) => GetRouteSpecHttp2RouteMatchPath.fromMap(
              (value as Map).cast<String, dynamic>())),
      port: map['port'] as int,
      prefix: map['prefix'] as String,
      queryParameters:
          Input.decodeList<GetRouteSpecHttp2RouteMatchQueryParameter>(
              map['queryParameters'],
              (value) => GetRouteSpecHttp2RouteMatchQueryParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      scheme: map['scheme'] as String,
    );
  }
}
