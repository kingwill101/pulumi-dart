// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http2_route_match_header.dart';
import 'route_spec_http2_route_match_path.dart';
import 'route_spec_http2_route_match_query_parameter.dart';

class RouteSpecHttp2RouteMatch {
  /// Client request headers to match on.
  final pulumi.Input<List<RouteSpecHttp2RouteMatchHeader>>? headers;
  /// Client request header method to match on. Valid values: `GET`, `HEAD`, `POST`, `PUT`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE`, `PATCH`.
  final pulumi.Input<String>? method;
  /// Client request path to match on.
  final pulumi.Input<RouteSpecHttp2RouteMatchPath>? path;
  /// The port number to match from the request.
  final pulumi.Input<int>? port;
  /// Path with which to match requests.
  /// This parameter must always start with /, which by itself matches all requests to the virtual router service name.
  final pulumi.Input<String>? prefix;
  /// Client request query parameters to match on.
  final pulumi.Input<List<RouteSpecHttp2RouteMatchQueryParameter>>? queryParameters;
  /// Client request header scheme to match on. Valid values: `http`, `https`.
  final pulumi.Input<String>? scheme;

  /// Creates a new [RouteSpecHttp2RouteMatch].
  /// [headers] Client request headers to match on.
  /// [method] Client request header method to match on. Valid values: `GET`, `HEAD`, `POST`, `PUT`, `DELETE`, `CONNECT`, `OPTIONS`, `TRACE`, `PATCH`.
  /// [path] Client request path to match on.
  /// [port] The port number to match from the request.
  /// [prefix] Path with which to match requests.
  /// [queryParameters] Client request query parameters to match on.
  /// [scheme] Client request header scheme to match on. Valid values: `http`, `https`.
  RouteSpecHttp2RouteMatch({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<List<RouteSpecHttp2RouteMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<RouteSpecHttp2RouteMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'method': ?method,
      'path': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttp2RouteMatchPath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'port': ?port,
      'prefix': ?prefix,
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<RouteSpecHttp2RouteMatchQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<RouteSpecHttp2RouteMatchQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scheme': ?scheme,
    };
  }

  factory RouteSpecHttp2RouteMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatch(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteSpecHttp2RouteMatchHeader>(guardedValue, (value) => RouteSpecHttp2RouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttp2RouteMatchPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteSpecHttp2RouteMatchQueryParameter>(guardedValue, (value) => RouteSpecHttp2RouteMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

