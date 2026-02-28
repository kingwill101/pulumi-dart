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
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<RouteSpecHttpRouteMatchHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue.toMap();
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final queryParametersValue = queryParameters;
    if (queryParametersValue != null) {
      map['queryParameters'] = pulumi.Input.encodeList<
          RouteSpecHttpRouteMatchQueryParameter,
          Map<String, dynamic>>(queryParametersValue, (value) => value.toMap());
    }
    final schemeValue = scheme;
    if (schemeValue != null) {
      map['scheme'] = schemeValue;
    }
    return map;
  }

  factory RouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatch(
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<RouteSpecHttpRouteMatchHeader>(
              map['headers'],
              (value) => RouteSpecHttpRouteMatchHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      method: map['method'] == null ? null : map['method'] as String,
      path: map['path'] == null
          ? null
          : RouteSpecHttpRouteMatchPath.fromMap(
              (map['path'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      queryParameters: map['queryParameters'] == null
          ? null
          : pulumi.Input.decodeList<RouteSpecHttpRouteMatchQueryParameter>(
              map['queryParameters'],
              (value) => RouteSpecHttpRouteMatchQueryParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}
