// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_probe_http_headers.dart';

/// HTTPGet specifies the http request to perform.
class SessionProbeHttpGet {
  /// Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
  final pulumi.Input<String?>? host;
  /// Custom headers to set in the request. HTTP allows repeated headers.
  final pulumi.Input<List<SessionProbeHttpHeaders>?>? httpHeaders;
  /// Path to access on the HTTP server.
  final pulumi.Input<String?>? path;
  /// Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  final pulumi.Input<int> port;
  /// Scheme to use for connecting to the host. Defaults to HTTP.
  final pulumi.Input<dynamic>? scheme;

  /// Creates a new [SessionProbeHttpGet].
  /// [host] Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server.
  /// [port] Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  /// [scheme] Scheme to use for connecting to the host. Defaults to HTTP.
  const SessionProbeHttpGet({
    this.host,
    this.httpHeaders,
    this.path,
    required this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'httpHeaders': ?pulumi.Input.mapOptionalInputValue<List<SessionProbeHttpHeaders>, List<Map<String, dynamic>>>(httpHeaders, (value) => pulumi.Input.encodeList<SessionProbeHttpHeaders, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': ?path,
      'port': port,
      'scheme': ?scheme,
    };
  }

  factory SessionProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return SessionProbeHttpGet(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpHeaders: (() { final guardedValue = map['httpHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SessionProbeHttpHeaders>(guardedValue, (value) => SessionProbeHttpHeaders.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
