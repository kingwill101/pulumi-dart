// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_service_template_spec_container_readiness_probe_grpc/get_service_template_spec_container_readiness_probe_grpc.dart';
import '../get_service_template_spec_container_readiness_probe_http_get/get_service_template_spec_container_readiness_probe_http_get.dart';

class GetServiceTemplateSpecContainerReadinessProbe {
  /// Minimum consecutive failures for the probe to be considered failed after
  /// having succeeded. Defaults to 3.
  final int failureThreshold;

  /// GRPC specifies an action involving a GRPC port.
  final List<GetServiceTemplateSpecContainerReadinessProbeGrpc> grpcs;

  /// HttpGet specifies the http request to perform.
  final List<GetServiceTemplateSpecContainerReadinessProbeHttpGet> httpGets;

  /// How often (in seconds) to perform the probe.
  /// Default to 10 seconds.
  final int periodSeconds;

  /// Minimum consecutive successes for the probe to be considered successful after having failed.
  /// Defaults to 2.
  final int successThreshold;

  /// Number of seconds after which the probe times out.
  /// Defaults to 1 second. Must be smaller than period_seconds.
  final int timeoutSeconds;

  GetServiceTemplateSpecContainerReadinessProbe({
    required this.failureThreshold,
    required this.grpcs,
    required this.httpGets,
    required this.periodSeconds,
    required this.successThreshold,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failureThreshold'] = failureThreshold;
    map['grpcs'] = pulumi.Input.encodeList<
        GetServiceTemplateSpecContainerReadinessProbeGrpc,
        Map<String, dynamic>>(grpcs, (value) => value.toMap());
    map['httpGets'] = pulumi.Input.encodeList<
        GetServiceTemplateSpecContainerReadinessProbeHttpGet,
        Map<String, dynamic>>(httpGets, (value) => value.toMap());
    map['periodSeconds'] = periodSeconds;
    map['successThreshold'] = successThreshold;
    map['timeoutSeconds'] = timeoutSeconds;
    return map;
  }

  factory GetServiceTemplateSpecContainerReadinessProbe.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerReadinessProbe(
      failureThreshold: map['failureThreshold'] as int,
      grpcs: pulumi.Input.decodeList<
              GetServiceTemplateSpecContainerReadinessProbeGrpc>(
          map['grpcs'],
          (value) => GetServiceTemplateSpecContainerReadinessProbeGrpc.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpGets: pulumi.Input.decodeList<
              GetServiceTemplateSpecContainerReadinessProbeHttpGet>(
          map['httpGets'],
          (value) =>
              GetServiceTemplateSpecContainerReadinessProbeHttpGet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      periodSeconds: map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] as int,
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}
