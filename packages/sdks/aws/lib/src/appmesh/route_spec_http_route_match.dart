// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_match_header.dart';
import 'route_spec_http_route_match_path.dart';
import 'route_spec_http_route_match_query_parameter.dart';

class RouteSpecHttpRouteMatch {
  /// Client request headers to match on.
  final pulumi.Input<List<RouteSpecHttpRouteMatchHeader>>? headers;
  /// Client request header method to match on. Valid values: `GET`, `HEAD`, `POST`, `PUT`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE`, `PATCH`.
  final pulumi.Input<String>? method;
  /// Client request path to match on.
  final pulumi.Input<RouteSpecHttpRouteMatchPath>? path;
  /// The port number to match from the request.
  final pulumi.Input<int>? port;
  /// Path with which to match requests.
  /// This parameter must always start with /, which by itself matches all requests to the virtual router service name.
  final pulumi.Input<String>? prefix;
  /// Client request query parameters to match on.
  final pulumi.Input<List<RouteSpecHttpRouteMatchQueryParameter>>? queryParameters;
  /// Client request header scheme to match on. Valid values: `http`, `https`.
  final pulumi.Input<String>? scheme;

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
      'headers': ?pulumi.Input.mapOptionalInputValue<List<RouteSpecHttpRouteMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<RouteSpecHttpRouteMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'method': ?method,
      'path': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRouteMatchPath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'port': ?port,
      'prefix': ?prefix,
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<RouteSpecHttpRouteMatchQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<RouteSpecHttpRouteMatchQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scheme': ?scheme,
    };
  }

  factory RouteSpecHttpRouteMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatch(
      headers: map['headers'] == null ? null : ((pulumi.Input.decodeList<RouteSpecHttpRouteMatchHeader>(map['headers']!, (value) => RouteSpecHttpRouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      method: map['method'] == null ? null : ((map['method'] as String).input()).input(),
      path: map['path'] == null ? null : ((RouteSpecHttpRouteMatchPath.fromMap((map['path']! as Map).cast<String, dynamic>())).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      prefix: map['prefix'] == null ? null : ((map['prefix'] as String).input()).input(),
      queryParameters: map['queryParameters'] == null ? null : ((pulumi.Input.decodeList<RouteSpecHttpRouteMatchQueryParameter>(map['queryParameters']!, (value) => RouteSpecHttpRouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      scheme: map['scheme'] == null ? null : ((map['scheme'] as String).input()).input(),
    );
  }
}

