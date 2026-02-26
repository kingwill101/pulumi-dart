// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_worker_pool_template_container_startup_probe_http_get_http_header/get_worker_pool_template_container_startup_probe_http_get_http_header.dart';

class GetWorkerPoolTemplateContainerStartupProbeHttpGet {
  /// Optional. Custom headers to set in the request. HTTP allows repeated headers.
  final List<GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader>
      httpHeaders;

  /// Optional. Path to access on the HTTP server. Defaults to '/'.
  final String path;

  /// Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final int port;

  GetWorkerPoolTemplateContainerStartupProbeHttpGet({
    required this.httpHeaders,
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpHeaders'] = Input.encodeList<
        GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader,
        Map<String, dynamic>>(httpHeaders, (value) => value.toMap());
    map['path'] = path;
    map['port'] = port;
    return map;
  }

  factory GetWorkerPoolTemplateContainerStartupProbeHttpGet.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerStartupProbeHttpGet(
      httpHeaders: Input.decodeList<
              GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader>(
          map['httpHeaders'],
          (value) => GetWorkerPoolTemplateContainerStartupProbeHttpGetHttpHeader
              .fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}
