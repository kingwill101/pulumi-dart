// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpheader.dart';

/// HTTPGetAction describes an action based on HTTP Get requests.
class HTTPGetAction {
  /// Not supported by Cloud Run.
  final String? host;

  /// Custom headers to set in the request. HTTP allows repeated headers.
  final List<HTTPHeader>? httpHeaders;

  /// Path to access on the HTTP server.
  final String? path;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  final int? port;

  /// Not supported by Cloud Run.
  final String? scheme;

  /// Creates a new [HTTPGetAction].
  /// [host] Not supported by Cloud Run.
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  /// [scheme] Not supported by Cloud Run.
  HTTPGetAction({
    this.host,
    this.httpHeaders,
    this.path,
    this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final httpHeadersValue = httpHeaders;
    if (httpHeadersValue != null) {
      map['httpHeaders'] =
          pulumi.Input.encodeList<HTTPHeader, Map<String, dynamic>>(
              httpHeadersValue, (value) => value.toMap());
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final schemeValue = scheme;
    if (schemeValue != null) {
      map['scheme'] = schemeValue;
    }
    return map;
  }

  factory HTTPGetAction.fromMap(Map<String, dynamic> map) {
    return HTTPGetAction(
      host: map['host'] == null ? null : map['host'] as String,
      httpHeaders: map['httpHeaders'] == null
          ? null
          : pulumi.Input.decodeList<HTTPHeader>(
              map['httpHeaders'],
              (value) =>
                  HTTPHeader.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}
