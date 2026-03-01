// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_response.dart';

/// The container Http Get settings, for liveness or readiness probe
class ContainerHttpGetResponse {
  /// The HTTP headers.
  final List<HttpHeaderResponse>? httpHeaders;
  /// The path to probe.
  final String? path;
  /// The port number to probe.
  final int port;
  /// The scheme.
  final String? scheme;

  /// Creates a new [ContainerHttpGetResponse].
  /// [httpHeaders] The HTTP headers.
  /// [path] The path to probe.
  /// [port] The port number to probe.
  /// [scheme] The scheme.
  ContainerHttpGetResponse({
    this.httpHeaders,
    this.path,
    required this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': ?httpHeaders == null ? null : pulumi.Input.encodeList<HttpHeaderResponse, Map<String, dynamic>>(httpHeaders!, (value) => value.toMap()),
      'path': ?path,
      'port': port,
      'scheme': ?scheme,
    };
  }

  factory ContainerHttpGetResponse.fromMap(Map<String, dynamic> map) {
    return ContainerHttpGetResponse(
      httpHeaders: map['httpHeaders'] == null ? null : pulumi.Input.decodeList<HttpHeaderResponse>(map['httpHeaders'], (value) => HttpHeaderResponse.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] as int,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}

