// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_container_liveness_probe_http_get_http_header.dart';

class GetWorkerPoolTemplateContainerLivenessProbeHttpGet {
  /// Optional. Custom headers to set in the request. HTTP allows repeated headers.
  final List<GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader> httpHeaders;
  /// Optional. Path to access on the HTTP server. Defaults to '/'.
  final String path;
  /// Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final int port;

  /// Creates a new [GetWorkerPoolTemplateContainerLivenessProbeHttpGet].
  /// [httpHeaders] Optional. Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Optional. Path to access on the HTTP server. Defaults to '/'.
  /// [port] Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  GetWorkerPoolTemplateContainerLivenessProbeHttpGet({
    required this.httpHeaders,
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': pulumi.Input.encodeList<GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader, Map<String, dynamic>>(httpHeaders, (value) => value.toMap()),
      'path': path,
      'port': port,
    };
  }

  factory GetWorkerPoolTemplateContainerLivenessProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerLivenessProbeHttpGet(
      httpHeaders: pulumi.Input.decodeList<GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader>(map['httpHeaders'], (value) => GetWorkerPoolTemplateContainerLivenessProbeHttpGetHttpHeader.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}

