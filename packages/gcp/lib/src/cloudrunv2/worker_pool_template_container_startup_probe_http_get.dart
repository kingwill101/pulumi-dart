// ignore_for_file: unused_element, unnecessary_cast

import 'worker_pool_template_container_startup_probe_http_get_http_headers.dart';

class WorkerPoolTemplateContainerStartupProbeHttpGet {
  /// Optional. Custom headers to set in the request. HTTP allows repeated headers.
  /// Structure is documented below.
  final WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders? httpHeaders;

  /// Optional. Path to access on the HTTP server. Defaults to '/'.
  final String? path;

  /// Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final int? port;

  /// Creates a new [WorkerPoolTemplateContainerStartupProbeHttpGet].
  /// [httpHeaders] Optional. Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Optional. Path to access on the HTTP server. Defaults to '/'.
  /// [port] Optional. Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  WorkerPoolTemplateContainerStartupProbeHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': ?httpHeaders == null ? null : httpHeaders!.toMap(),
      'path': ?path,
      'port': ?port,
    };
  }

  factory WorkerPoolTemplateContainerStartupProbeHttpGet.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkerPoolTemplateContainerStartupProbeHttpGet(
      httpHeaders: map['httpHeaders'] == null
          ? null
          : WorkerPoolTemplateContainerStartupProbeHttpGetHttpHeaders.fromMap(
              (map['httpHeaders'] as Map).cast<String, dynamic>(),
            ),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
