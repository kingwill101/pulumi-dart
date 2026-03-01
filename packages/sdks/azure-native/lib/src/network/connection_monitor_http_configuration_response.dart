// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpheader_response.dart';

/// Describes the HTTP configuration.
class ConnectionMonitorHttpConfigurationResponse {
  /// The HTTP method to use.
  final String? method;
  /// The path component of the URI. For instance, "/dir1/dir2".
  final String? path;
  /// The port to connect to.
  final int? port;
  /// Value indicating whether HTTPS is preferred over HTTP in cases where the choice is not explicit.
  final bool? preferHTTPS;
  /// The HTTP headers to transmit with the request.
  final List<HTTPHeaderResponse>? requestHeaders;
  /// HTTP status codes to consider successful. For instance, "2xx,301-304,418".
  final List<String>? validStatusCodeRanges;

  /// Creates a new [ConnectionMonitorHttpConfigurationResponse].
  /// [method] The HTTP method to use.
  /// [path] The path component of the URI. For instance, "/dir1/dir2".
  /// [port] The port to connect to.
  /// [preferHTTPS] Value indicating whether HTTPS is preferred over HTTP in cases where the choice is not explicit.
  /// [requestHeaders] The HTTP headers to transmit with the request.
  /// [validStatusCodeRanges] HTTP status codes to consider successful. For instance, "2xx,301-304,418".
  ConnectionMonitorHttpConfigurationResponse({
    this.method,
    this.path,
    this.port,
    this.preferHTTPS,
    this.requestHeaders,
    this.validStatusCodeRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'path': ?path,
      'port': ?port,
      'preferHTTPS': ?preferHTTPS,
      'requestHeaders': ?requestHeaders == null ? null : pulumi.Input.encodeList<HTTPHeaderResponse, Map<String, dynamic>>(requestHeaders!, (value) => value.toMap()),
      'validStatusCodeRanges': ?validStatusCodeRanges,
    };
  }

  factory ConnectionMonitorHttpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorHttpConfigurationResponse(
      method: map['method'] == null ? null : map['method'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      preferHTTPS: map['preferHTTPS'] == null ? null : map['preferHTTPS'] as bool,
      requestHeaders: map['requestHeaders'] == null ? null : pulumi.Input.decodeList<HTTPHeaderResponse>(map['requestHeaders'], (value) => HTTPHeaderResponse.fromMap((value as Map).cast<String, dynamic>())),
      validStatusCodeRanges: map['validStatusCodeRanges'] == null ? null : (map['validStatusCodeRanges'] as List).cast<String>(),
    );
  }
}

