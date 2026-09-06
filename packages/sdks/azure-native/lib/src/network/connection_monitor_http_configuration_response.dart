// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpheader_response.dart';

/// Describes the HTTP configuration.
class ConnectionMonitorHttpConfigurationResponse {
  /// The HTTP method to use.
  final pulumi.Input<String?>? method;
  /// The path component of the URI. For instance, "/dir1/dir2".
  final pulumi.Input<String?>? path;
  /// The port to connect to.
  final pulumi.Input<int?>? port;
  /// Value indicating whether HTTPS is preferred over HTTP in cases where the choice is not explicit.
  final pulumi.Input<bool?>? preferHTTPS;
  /// The HTTP headers to transmit with the request.
  final pulumi.Input<List<HTTPHeaderResponse>?>? requestHeaders;
  /// HTTP status codes to consider successful. For instance, "2xx,301-304,418".
  final pulumi.Input<List<String>?>? validStatusCodeRanges;

  /// Creates a new [ConnectionMonitorHttpConfigurationResponse].
  /// [method] The HTTP method to use.
  /// [path] The path component of the URI. For instance, "/dir1/dir2".
  /// [port] The port to connect to.
  /// [preferHTTPS] Value indicating whether HTTPS is preferred over HTTP in cases where the choice is not explicit.
  /// [requestHeaders] The HTTP headers to transmit with the request.
  /// [validStatusCodeRanges] HTTP status codes to consider successful. For instance, "2xx,301-304,418".
  const ConnectionMonitorHttpConfigurationResponse({
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
      'requestHeaders': ?pulumi.Input.mapOptionalInputValue<List<HTTPHeaderResponse>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<HTTPHeaderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validStatusCodeRanges': ?validStatusCodeRanges,
    };
  }

  factory ConnectionMonitorHttpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorHttpConfigurationResponse(
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      preferHTTPS: (() { final guardedValue = map['preferHTTPS']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HTTPHeaderResponse>(guardedValue, (value) => HTTPHeaderResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      validStatusCodeRanges: (() { final guardedValue = map['validStatusCodeRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
