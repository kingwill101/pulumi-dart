// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_match_header.dart';
import 'get_route_spec_http_route_match_path.dart';
import 'get_route_spec_http_route_match_query_parameter.dart';

class GetRouteSpecHttpRouteMatch {
  final List<GetRouteSpecHttpRouteMatchHeader> headers;
  final String method;
  final List<GetRouteSpecHttpRouteMatchPath> paths;
  final int port;
  final String prefix;
  final List<GetRouteSpecHttpRouteMatchQueryParameter> queryParameters;
  final String scheme;

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
      'headers':
          pulumi.Input.encodeList<
            GetRouteSpecHttpRouteMatchHeader,
            Map<String, dynamic>
          >(headers, (value) => value.toMap()),
      'method': method,
      'paths':
          pulumi.Input.encodeList<
            GetRouteSpecHttpRouteMatchPath,
            Map<String, dynamic>
          >(paths, (value) => value.toMap()),
      'port': port,
      'prefix': prefix,
      'queryParameters':
          pulumi.Input.encodeList<
            GetRouteSpecHttpRouteMatchQueryParameter,
            Map<String, dynamic>
          >(queryParameters, (value) => value.toMap()),
      'scheme': scheme,
    };
  }

  factory GetRouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatch(
      headers: pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchHeader>(
        map['headers'],
        (value) => GetRouteSpecHttpRouteMatchHeader.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      method: map['method'] as String,
      paths: pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchPath>(
        map['paths'],
        (value) => GetRouteSpecHttpRouteMatchPath.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      port: map['port'] as int,
      prefix: map['prefix'] as String,
      queryParameters:
          pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchQueryParameter>(
            map['queryParameters'],
            (value) => GetRouteSpecHttpRouteMatchQueryParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      scheme: map['scheme'] as String,
    );
  }
}
