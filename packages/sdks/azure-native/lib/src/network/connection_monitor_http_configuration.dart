// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpheader.dart';

/// Describes the HTTP configuration.
class ConnectionMonitorHttpConfiguration {
  /// The HTTP method to use.
  final pulumi.Input<String>? method;
  /// The path component of the URI. For instance, "/dir1/dir2".
  final pulumi.Input<String>? path;
  /// The port to connect to.
  final pulumi.Input<int>? port;
  /// Value indicating whether HTTPS is preferred over HTTP in cases where the choice is not explicit.
  final pulumi.Input<bool>? preferHTTPS;
  /// The HTTP headers to transmit with the request.
  final pulumi.Input<List<HTTPHeader>>? requestHeaders;
  /// HTTP status codes to consider successful. For instance, "2xx,301-304,418".
  final pulumi.Input<List<String>>? validStatusCodeRanges;

  /// Creates a new [ConnectionMonitorHttpConfiguration].
  /// [method] The HTTP method to use.
  /// [path] The path component of the URI. For instance, "/dir1/dir2".
  /// [port] The port to connect to.
  /// [preferHTTPS] Value indicating whether HTTPS is preferred over HTTP in cases where the choice is not explicit.
  /// [requestHeaders] The HTTP headers to transmit with the request.
  /// [validStatusCodeRanges] HTTP status codes to consider successful. For instance, "2xx,301-304,418".
  ConnectionMonitorHttpConfiguration({
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
      'requestHeaders': ?pulumi.Input.mapOptionalInputValue<List<HTTPHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<HTTPHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validStatusCodeRanges': ?validStatusCodeRanges,
    };
  }

  factory ConnectionMonitorHttpConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorHttpConfiguration(
      method: map['method'] == null ? null : (map['method'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      preferHTTPS: map['preferHTTPS'] == null ? null : (map['preferHTTPS'] as bool).input(),
      requestHeaders: map['requestHeaders'] == null ? null : (pulumi.Input.decodeList<HTTPHeader>(map['requestHeaders'], (value) => HTTPHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validStatusCodeRanges: map['validStatusCodeRanges'] == null ? null : ((map['validStatusCodeRanges'] as List).cast<String>()).input(),
    );
  }
}

