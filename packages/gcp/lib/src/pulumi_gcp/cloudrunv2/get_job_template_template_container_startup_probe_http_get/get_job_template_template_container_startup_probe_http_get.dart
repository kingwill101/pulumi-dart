// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_job_template_template_container_startup_probe_http_get_http_header/get_job_template_template_container_startup_probe_http_get_http_header.dart';

class GetJobTemplateTemplateContainerStartupProbeHttpGet {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  final List<GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader>
      httpHeaders;

  /// Path to access on the HTTP server. If set, it should not be empty string.
  final String path;

  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final int port;

  GetJobTemplateTemplateContainerStartupProbeHttpGet({
    required this.httpHeaders,
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpHeaders'] = pulumi.Input.encodeList<
        GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader,
        Map<String, dynamic>>(httpHeaders, (value) => value.toMap());
    map['path'] = path;
    map['port'] = port;
    return map;
  }

  factory GetJobTemplateTemplateContainerStartupProbeHttpGet.fromMap(
      Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerStartupProbeHttpGet(
      httpHeaders: pulumi.Input.decodeList<
              GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader>(
          map['httpHeaders'],
          (value) =>
              GetJobTemplateTemplateContainerStartupProbeHttpGetHttpHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}
