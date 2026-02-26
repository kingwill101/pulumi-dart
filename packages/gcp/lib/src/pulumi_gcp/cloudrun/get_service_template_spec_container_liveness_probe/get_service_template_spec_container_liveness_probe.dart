// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_template_spec_container_liveness_probe_grpc/get_service_template_spec_container_liveness_probe_grpc.dart';
import '../get_service_template_spec_container_liveness_probe_http_get/get_service_template_spec_container_liveness_probe_http_get.dart';

class GetServiceTemplateSpecContainerLivenessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3. Minimum value is 1.
  final int failureThreshold;

  /// GRPC specifies an action involving a GRPC port.
  final List<GetServiceTemplateSpecContainerLivenessProbeGrpc> grpcs;

  /// HttpGet specifies the http request to perform.
  final List<GetServiceTemplateSpecContainerLivenessProbeHttpGet> httpGets;

  /// Number of seconds after the container has started before the probe is
  /// initiated.
  /// Defaults to 0 seconds. Minimum value is 0. Maximum value is 3600.
  final int initialDelaySeconds;

  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds. Minimum value is 1. Maximum value is 3600.
  final int periodSeconds;

  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Minimum value is 1. Maximum value is 3600.
  /// Must be smaller than period_seconds.
  final int timeoutSeconds;

  GetServiceTemplateSpecContainerLivenessProbe({
    required this.failureThreshold,
    required this.grpcs,
    required this.httpGets,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failureThreshold'] = failureThreshold;
    map['grpcs'] = Input.encodeList<
        GetServiceTemplateSpecContainerLivenessProbeGrpc,
        Map<String, dynamic>>(grpcs, (value) => value.toMap());
    map['httpGets'] = Input.encodeList<
        GetServiceTemplateSpecContainerLivenessProbeHttpGet,
        Map<String, dynamic>>(httpGets, (value) => value.toMap());
    map['initialDelaySeconds'] = initialDelaySeconds;
    map['periodSeconds'] = periodSeconds;
    map['timeoutSeconds'] = timeoutSeconds;
    return map;
  }

  factory GetServiceTemplateSpecContainerLivenessProbe.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerLivenessProbe(
      failureThreshold: map['failureThreshold'] as int,
      grpcs: Input.decodeList<GetServiceTemplateSpecContainerLivenessProbeGrpc>(
          map['grpcs'],
          (value) => GetServiceTemplateSpecContainerLivenessProbeGrpc.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpGets:
          Input.decodeList<GetServiceTemplateSpecContainerLivenessProbeHttpGet>(
              map['httpGets'],
              (value) =>
                  GetServiceTemplateSpecContainerLivenessProbeHttpGet.fromMap(
                      (value as Map).cast<String, dynamic>())),
      initialDelaySeconds: map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] as int,
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}
