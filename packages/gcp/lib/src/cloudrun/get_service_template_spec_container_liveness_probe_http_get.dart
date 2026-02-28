// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_liveness_probe_http_get_http_header.dart';

class GetServiceTemplateSpecContainerLivenessProbeHttpGet {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  final List<GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader>
      httpHeaders;

  /// Path to access on the HTTP server. If set, it should not be empty string.
  final String path;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int port;

  /// Creates a new [GetServiceTemplateSpecContainerLivenessProbeHttpGet].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. If set, it should not be empty string.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  GetServiceTemplateSpecContainerLivenessProbeHttpGet({
    required this.httpHeaders,
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpHeaders'] = pulumi.Input.encodeList<
        GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader,
        Map<String, dynamic>>(httpHeaders, (value) => value.toMap());
    map['path'] = path;
    map['port'] = port;
    return map;
  }

  factory GetServiceTemplateSpecContainerLivenessProbeHttpGet.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerLivenessProbeHttpGet(
      httpHeaders: pulumi.Input.decodeList<
              GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader>(
          map['httpHeaders'],
          (value) =>
              GetServiceTemplateSpecContainerLivenessProbeHttpGetHttpHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}
