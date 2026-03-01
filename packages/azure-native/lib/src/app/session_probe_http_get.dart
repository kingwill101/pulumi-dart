// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_probe_http_headers.dart';

/// HTTPGet specifies the http request to perform.
class SessionProbeHttpGet {
  /// Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
  final String? host;
  /// Custom headers to set in the request. HTTP allows repeated headers.
  final List<SessionProbeHttpHeaders>? httpHeaders;
  /// Path to access on the HTTP server.
  final String? path;
  /// Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  final int port;
  /// Scheme to use for connecting to the host. Defaults to HTTP.
  final String? scheme;

  /// Creates a new [SessionProbeHttpGet].
  /// [host] Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server.
  /// [port] Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  /// [scheme] Scheme to use for connecting to the host. Defaults to HTTP.
  SessionProbeHttpGet({
    this.host,
    this.httpHeaders,
    this.path,
    required this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'httpHeaders': ?httpHeaders == null ? null : pulumi.Input.encodeList<SessionProbeHttpHeaders, Map<String, dynamic>>(httpHeaders!, (value) => value.toMap()),
      'path': ?path,
      'port': port,
      'scheme': ?scheme,
    };
  }

  factory SessionProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return SessionProbeHttpGet(
      host: map['host'] == null ? null : map['host'] as String,
      httpHeaders: map['httpHeaders'] == null ? null : pulumi.Input.decodeList<SessionProbeHttpHeaders>(map['httpHeaders'], (value) => SessionProbeHttpHeaders.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] as int,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}

