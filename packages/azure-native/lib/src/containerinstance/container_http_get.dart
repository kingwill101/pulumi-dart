// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header.dart';

/// The container Http Get settings, for liveness or readiness probe
class ContainerHttpGet {
  /// The HTTP headers.
  final List<HttpHeader>? httpHeaders;
  /// The path to probe.
  final String? path;
  /// The port number to probe.
  final int port;
  /// The scheme.
  final String? scheme;

  /// Creates a new [ContainerHttpGet].
  /// [httpHeaders] The HTTP headers.
  /// [path] The path to probe.
  /// [port] The port number to probe.
  /// [scheme] The scheme.
  ContainerHttpGet({
    this.httpHeaders,
    this.path,
    required this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': ?httpHeaders == null ? null : pulumi.Input.encodeList<HttpHeader, Map<String, dynamic>>(httpHeaders!, (value) => value.toMap()),
      'path': ?path,
      'port': port,
      'scheme': ?scheme,
    };
  }

  factory ContainerHttpGet.fromMap(Map<String, dynamic> map) {
    return ContainerHttpGet(
      httpHeaders: map['httpHeaders'] == null ? null : pulumi.Input.decodeList<HttpHeader>(map['httpHeaders'], (value) => HttpHeader.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] as int,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}

