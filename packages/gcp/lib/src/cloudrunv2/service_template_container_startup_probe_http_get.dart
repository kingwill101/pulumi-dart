// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_container_startup_probe_http_get_http_header.dart';

class ServiceTemplateContainerStartupProbeHttpGet {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  /// Structure is documented below.
  final List<ServiceTemplateContainerStartupProbeHttpGetHttpHeader>?
  httpHeaders;

  /// Path to access on the HTTP server. Defaults to '/'.
  final String? path;

  /// Port number to access on the container. Must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int? port;

  /// Creates a new [ServiceTemplateContainerStartupProbeHttpGet].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. Defaults to '/'.
  /// [port] Port number to access on the container. Must be in the range 1 to 65535.
  ServiceTemplateContainerStartupProbeHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': ?httpHeaders == null
          ? null
          : pulumi.Input.encodeList<
              ServiceTemplateContainerStartupProbeHttpGetHttpHeader,
              Map<String, dynamic>
            >(httpHeaders!, (value) => value.toMap()),
      'path': ?path,
      'port': ?port,
    };
  }

  factory ServiceTemplateContainerStartupProbeHttpGet.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateContainerStartupProbeHttpGet(
      httpHeaders: map['httpHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
              ServiceTemplateContainerStartupProbeHttpGetHttpHeader
            >(
              map['httpHeaders'],
              (value) =>
                  ServiceTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
