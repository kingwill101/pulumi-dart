// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_match_header.dart';
import 'route_spec_http_route_match_path.dart';
import 'route_spec_http_route_match_query_parameter.dart';

class RouteSpecHttpRouteMatch {
  /// Client request headers to match on. See `spec.http_route.match.header` Block for details.
  final pulumi.Input<List<RouteSpecHttpRouteMatchHeader>>? headers;
  /// Client request header method to match on. Valid values: `GET`, `HEAD`, `POST`, `PUT`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE`, `PATCH`.
  final pulumi.Input<String>? method;
  /// Client request path to match on. See `spec.http_route.match.path` Block for details.
  final pulumi.Input<RouteSpecHttpRouteMatchPath>? path;
  /// Port number to match from the request.
  final pulumi.Input<int>? port;
  /// Header value sent by the client must begin with the specified characters.
  final pulumi.Input<String>? prefix;
  /// Client request query parameters to match on. See `spec.http_route.match.query_parameter` Block for details.
  final pulumi.Input<List<RouteSpecHttpRouteMatchQueryParameter>>? queryParameters;
  /// Client request header scheme to match on. Valid values: `http`, `https`.
  final pulumi.Input<String>? scheme;

  /// Creates a new [RouteSpecHttpRouteMatch].
  /// [headers] Client request headers to match on. See `spec.http_route.match.header` Block for details.
  /// [method] Client request header method to match on. Valid values: `GET`, `HEAD`, `POST`, `PUT`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE`, `PATCH`.
  /// [path] Client request path to match on. See `spec.http_route.match.path` Block for details.
  /// [port] Port number to match from the request.
  /// [prefix] Header value sent by the client must begin with the specified characters.
  /// [queryParameters] Client request query parameters to match on. See `spec.http_route.match.query_parameter` Block for details.
  /// [scheme] Client request header scheme to match on. Valid values: `http`, `https`.
  const RouteSpecHttpRouteMatch({
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
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteSpecHttpRouteMatchHeader>(guardedValue, (value) => RouteSpecHttpRouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttpRouteMatchPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteSpecHttpRouteMatchQueryParameter>(guardedValue, (value) => RouteSpecHttpRouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
