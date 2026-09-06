// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apm_reference_response.dart';
import 'container_probe_settings_response.dart';
import 'probe_response.dart';
import 'resource_requests_response.dart';
import 'scale_response.dart';

/// Deployment settings payload
class DeploymentSettingsResponse {
  /// Collection of addons
  final pulumi.Input<Map<String, dynamic>?>? addonConfigs;
  /// Collection of ApmReferences
  final pulumi.Input<List<ApmReferenceResponse>?>? apms;
  /// Container liveness and readiness probe settings
  final pulumi.Input<ContainerProbeSettingsResponse?>? containerProbeSettings;
  /// Collection of environment variables
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// Periodic probe of App Instance liveness. App Instance will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<ProbeResponse?>? livenessProbe;
  /// Periodic probe of App Instance service readiness. App Instance will be removed from service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<ProbeResponse?>? readinessProbe;
  /// The requested resource quantity for required CPU and Memory. It is recommended that using this field to represent the required CPU and Memory, the old field cpu and memoryInGB will be deprecated later.
  final pulumi.Input<ResourceRequestsResponse?>? resourceRequests;
  /// Scaling properties for the Azure Spring Apps App Instance.
  final pulumi.Input<ScaleResponse?>? scale;
  /// StartupProbe indicates that the App Instance has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a App Instance's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<ProbeResponse?>? startupProbe;
  /// Optional duration in seconds the App Instance needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the App Instance are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 90 seconds.
  final pulumi.Input<int?>? terminationGracePeriodSeconds;

  /// Creates a new [DeploymentSettingsResponse].
  /// [addonConfigs] Collection of addons
  /// [apms] Collection of ApmReferences
  /// [containerProbeSettings] Container liveness and readiness probe settings
  /// [environmentVariables] Collection of environment variables
  /// [livenessProbe] Periodic probe of App Instance liveness. App Instance will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [readinessProbe] Periodic probe of App Instance service readiness. App Instance will be removed from service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [resourceRequests] The requested resource quantity for required CPU and Memory. It is recommended that using this field to represent the required CPU and Memory, the old field cpu and memoryInGB will be deprecated later.
  /// [scale] Scaling properties for the Azure Spring Apps App Instance.
  /// [startupProbe] StartupProbe indicates that the App Instance has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a App Instance's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [terminationGracePeriodSeconds] Optional duration in seconds the App Instance needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the App Instance are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 90 seconds.
  DeploymentSettingsResponse({
    this.addonConfigs,
    this.apms,
    this.containerProbeSettings,
    this.environmentVariables,
    this.livenessProbe,
    this.readinessProbe,
    this.resourceRequests,
    this.scale,
    this.startupProbe,
    pulumi.Input<int?>? terminationGracePeriodSeconds,
  }) : terminationGracePeriodSeconds = terminationGracePeriodSeconds ?? pulumi.Input.fromValue(90);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonConfigs': ?addonConfigs,
      'apms': ?pulumi.Input.mapOptionalInputValue<List<ApmReferenceResponse>, List<Map<String, dynamic>>>(apms, (value) => pulumi.Input.encodeList<ApmReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerProbeSettings': ?pulumi.Input.mapOptionalInputValue<ContainerProbeSettingsResponse, Map<String, dynamic>>(containerProbeSettings, (value) => value.toMap()),
      'environmentVariables': ?environmentVariables,
      'livenessProbe': ?pulumi.Input.mapOptionalInputValue<ProbeResponse, Map<String, dynamic>>(livenessProbe, (value) => value.toMap()),
      'readinessProbe': ?pulumi.Input.mapOptionalInputValue<ProbeResponse, Map<String, dynamic>>(readinessProbe, (value) => value.toMap()),
      'resourceRequests': ?pulumi.Input.mapOptionalInputValue<ResourceRequestsResponse, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
      'scale': ?pulumi.Input.mapOptionalInputValue<ScaleResponse, Map<String, dynamic>>(scale, (value) => value.toMap()),
      'startupProbe': ?pulumi.Input.mapOptionalInputValue<ProbeResponse, Map<String, dynamic>>(startupProbe, (value) => value.toMap()),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
    };
  }

  factory DeploymentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsResponse(
      addonConfigs: (() { final guardedValue = map['addonConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      apms: (() { final guardedValue = map['apms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApmReferenceResponse>(guardedValue, (value) => ApmReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containerProbeSettings: (() { final guardedValue = map['containerProbeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerProbeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      livenessProbe: (() { final guardedValue = map['livenessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProbeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readinessProbe: (() { final guardedValue = map['readinessProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProbeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceRequests: (() { final guardedValue = map['resourceRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequestsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startupProbe: (() { final guardedValue = map['startupProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProbeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      terminationGracePeriodSeconds: (() { final guardedValue = map['terminationGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
