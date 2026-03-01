// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_liveness_probe_http_get_http_header.dart';

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet {
  /// Host name to connect to, defaults to the model serving container's IP.
  /// You probably want to set "Host" in httpHeaders instead.
  final String? host;

  /// Custom headers to set in the request. HTTP allows repeated headers.
  /// Structure is documented below.
  final List<
    AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeader
  >?
  httpHeaders;

  /// Path to access on the HTTP server.
  final String? path;

  /// Number of the port to access on the container.
  /// Number must be in the range 1 to 65535.
  final int? port;

  /// Scheme to use for connecting to the host.
  /// Defaults to HTTP. Acceptable values are "HTTP" or "HTTPS".
  final String? scheme;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet].
  /// [host] Host name to connect to, defaults to the model serving container's IP.
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server.
  /// [port] Number of the port to access on the container.
  /// [scheme] Scheme to use for connecting to the host.
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet({
    this.host,
    this.httpHeaders,
    this.path,
    this.port,
    this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'httpHeaders': ?httpHeaders == null
          ? null
          : pulumi.Input.encodeList<
              AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeader,
              Map<String, dynamic>
            >(httpHeaders!, (value) => value.toMap()),
      'path': ?path,
      'port': ?port,
      'scheme': ?scheme,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet(
      host: map['host'] == null ? null : map['host'] as String,
      httpHeaders: map['httpHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
              AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeader
            >(
              map['httpHeaders'],
              (value) =>
                  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeader.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
    );
  }
}
