// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpheader_response.dart';

/// HTTPGetAction describes an action based on HTTP Get requests.
class HTTPGetActionResponse {
  /// Not supported by Cloud Run.
  final String host;

  /// Custom headers to set in the request. HTTP allows repeated headers.
  final List<HTTPHeaderResponse> httpHeaders;

  /// Path to access on the HTTP server.
  final String path;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  final int port;

  /// Not supported by Cloud Run.
  final String scheme;

  /// Creates a new [HTTPGetActionResponse].
  /// [host] Not supported by Cloud Run.
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  /// [scheme] Not supported by Cloud Run.
  HTTPGetActionResponse({
    required this.host,
    required this.httpHeaders,
    required this.path,
    required this.port,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'httpHeaders':
          pulumi.Input.encodeList<HTTPHeaderResponse, Map<String, dynamic>>(
            httpHeaders,
            (value) => value.toMap(),
          ),
      'path': path,
      'port': port,
      'scheme': scheme,
    };
  }

  factory HTTPGetActionResponse.fromMap(Map<String, dynamic> map) {
    return HTTPGetActionResponse(
      host: map['host'] as String,
      httpHeaders: pulumi.Input.decodeList<HTTPHeaderResponse>(
        map['httpHeaders'],
        (value) =>
            HTTPHeaderResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      path: map['path'] as String,
      port: map['port'] as int,
      scheme: map['scheme'] as String,
    );
  }
}
