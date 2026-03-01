// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_match_header.dart';
import 'route_spec_http_route_match_path.dart';
import 'route_spec_http_route_match_query_parameter.dart';

class RouteSpecHttpRouteMatch {
  /// Client request headers to match on.
  final List<RouteSpecHttpRouteMatchHeader>? headers;

  /// Client request header method to match on. Valid values: `GET`, `HEAD`, `POST`, `PUT`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE`, `PATCH`.
  final String? method;

  /// Client request path to match on.
  final RouteSpecHttpRouteMatchPath? path;

  /// The port number to match from the request.
  final int? port;

  /// Path with which to match requests.
  /// This parameter must always start with /, which by itself matches all requests to the virtual router service name.
  final String? prefix;

  /// Client request query parameters to match on.
  final List<RouteSpecHttpRouteMatchQueryParameter>? queryParameters;

  /// Client request header scheme to match on. Valid values: `http`, `https`.
  final String? scheme;

  /// Creates a new [RouteSpecHttpRouteMatch].
  /// [headers] Client request headers to match on.
  /// [method] Client request header method to match on. Valid values: `GET`, `HEAD`, `POST`, `PUT`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE`, `PATCH`.
  /// [path] Client request path to match on.
  /// [port] The port number to match from the request.
  /// [prefix] Path with which to match requests.
  /// [queryParameters] Client request query parameters to match on.
  /// [scheme] Client request header scheme to match on. Valid values: `http`, `https`.
  RouteSpecHttpRouteMatch({
    this.headers,
    this.method,
    this.path,
    this.port,
    this.prefix,
    this.queryParameters,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null
          ? null
          : pulumi.Input.encodeList<
              RouteSpecHttpRouteMatchHeader,
              Map<String, dynamic>
            >(headers!, (value) => value.toMap()),
      'method': ?method,
      'path': ?path == null ? null : path!.toMap(),
      'port': ?port,
      'prefix': ?prefix,
      'queryParameters': ?queryParameters == null
          ? null
          : pulumi.Input.encodeList<
              RouteSpecHttpRouteMatchQueryParameter,
              Map<String, dynamic>
            >(queryParameters!, (value) => value.toMap()),
      'scheme': ?scheme,
    };
  }

  factory RouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatch(
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<RouteSpecHttpRouteMatchHeader>(
              map['headers'],
              (value) => RouteSpecHttpRouteMatchHeader.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      method: map['method'] == null ? null : map['method'] as String,
      path: map['path'] == null
          ? null
          : RouteSpecHttpRouteMatchPath.fromMap(
              (map['path'] as Map).cast<String, dynamic>(),
            ),
      port: map['port'] == null ? null : map['port'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      queryParameters: map['queryParameters'] == null
          ? null
          : pulumi.Input.decodeList<RouteSpecHttpRouteMatchQueryParameter>(
              map['queryParameters'],
              (value) => RouteSpecHttpRouteMatchQueryParameter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}
