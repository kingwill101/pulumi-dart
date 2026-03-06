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
  const ConnectionMonitorHttpConfiguration({
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
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      preferHTTPS: (() { final guardedValue = map['preferHTTPS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HTTPHeader>(guardedValue, (value) => HTTPHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      validStatusCodeRanges: (() { final guardedValue = map['validStatusCodeRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

