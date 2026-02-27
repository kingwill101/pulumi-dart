// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
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

  HTTPGetActionResponse({
    required this.host,
    required this.httpHeaders,
    required this.path,
    required this.port,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['httpHeaders'] =
        Input.encodeList<HTTPHeaderResponse, Map<String, dynamic>>(
            httpHeaders, (value) => value.toMap());
    map['path'] = path;
    map['port'] = port;
    map['scheme'] = scheme;
    return map;
  }

  factory HTTPGetActionResponse.fromMap(Map<String, dynamic> map) {
    return HTTPGetActionResponse(
      host: map['host'] as String,
      httpHeaders: Input.decodeList<HTTPHeaderResponse>(
          map['httpHeaders'],
          (value) => HTTPHeaderResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
      port: map['port'] as int,
      scheme: map['scheme'] as String,
    );
  }
}
