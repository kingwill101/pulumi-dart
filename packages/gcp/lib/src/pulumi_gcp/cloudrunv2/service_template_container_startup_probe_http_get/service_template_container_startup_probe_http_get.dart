// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_template_container_startup_probe_http_get_http_header/service_template_container_startup_probe_http_get_http_header.dart';

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

  ServiceTemplateContainerStartupProbeHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpHeadersValue = httpHeaders;
    if (httpHeadersValue != null) {
      map['httpHeaders'] = Input.encodeList<
          ServiceTemplateContainerStartupProbeHttpGetHttpHeader,
          Map<String, dynamic>>(httpHeadersValue, (value) => value.toMap());
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory ServiceTemplateContainerStartupProbeHttpGet.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateContainerStartupProbeHttpGet(
      httpHeaders: map['httpHeaders'] == null
          ? null
          : Input.decodeList<
                  ServiceTemplateContainerStartupProbeHttpGetHttpHeader>(
              map['httpHeaders'],
              (value) =>
                  ServiceTemplateContainerStartupProbeHttpGetHttpHeader.fromMap(
                      (value as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
