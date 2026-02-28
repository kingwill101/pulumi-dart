// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container_startup_probe_http_get_http_header.dart';

class GetServiceTemplateContainerStartupProbeHttpGet {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  final List<GetServiceTemplateContainerStartupProbeHttpGetHttpHeader>
      httpHeaders;

  /// Path to access on the HTTP server. Defaults to '/'.
  final String path;

  /// Port number to access on the container. Must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int port;

  /// Creates a new [GetServiceTemplateContainerStartupProbeHttpGet].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. Defaults to '/'.
  /// [port] Port number to access on the container. Must be in the range 1 to 65535.
  GetServiceTemplateContainerStartupProbeHttpGet({
    required this.httpHeaders,
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpHeaders'] = pulumi.Input.encodeList<
        GetServiceTemplateContainerStartupProbeHttpGetHttpHeader,
        Map<String, dynamic>>(httpHeaders, (value) => value.toMap());
    map['path'] = path;
    map['port'] = port;
    return map;
  }

  factory GetServiceTemplateContainerStartupProbeHttpGet.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateContainerStartupProbeHttpGet(
      httpHeaders: pulumi.Input.decodeList<
              GetServiceTemplateContainerStartupProbeHttpGetHttpHeader>(
          map['httpHeaders'],
          (value) =>
              GetServiceTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}
