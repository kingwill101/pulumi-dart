// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apm_reference.dart';
import 'container_probe_settings.dart';
import 'probe.dart';
import 'resource_requests.dart';
import 'scale.dart';

/// Deployment settings payload
class DeploymentSettings {
  /// Collection of addons
  final Map<String, dynamic>? addonConfigs;
  /// Collection of ApmReferences
  final List<ApmReference>? apms;
  /// Container liveness and readiness probe settings
  final ContainerProbeSettings? containerProbeSettings;
  /// Collection of environment variables
  final Map<String, String>? environmentVariables;
  /// Periodic probe of App Instance liveness. App Instance will be restarted if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final Probe? livenessProbe;
  /// Periodic probe of App Instance service readiness. App Instance will be removed from service endpoints if the probe fails. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final Probe? readinessProbe;
  /// The requested resource quantity for required CPU and Memory. It is recommended that using this field to represent the required CPU and Memory, the old field cpu and memoryInGB will be deprecated later.
  final ResourceRequests? resourceRequests;
  /// Scaling properties for the Azure Spring Apps App Instance.
  final Scale? scale;
  /// StartupProbe indicates that the App Instance has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a App Instance's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final Probe? startupProbe;
  /// Optional duration in seconds the App Instance needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the App Instance are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 90 seconds.
  final int? terminationGracePeriodSeconds;

  /// Creates a new [DeploymentSettings].
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
  DeploymentSettings({
    this.addonConfigs,
    this.apms,
    this.containerProbeSettings,
    this.environmentVariables,
    this.livenessProbe,
    this.readinessProbe,
    this.resourceRequests,
    this.scale,
    this.startupProbe,
    this.terminationGracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonConfigs': ?addonConfigs,
      'apms': ?apms == null ? null : pulumi.Input.encodeList<ApmReference, Map<String, dynamic>>(apms!, (value) => value.toMap()),
      'containerProbeSettings': ?containerProbeSettings == null ? null : containerProbeSettings!.toMap(),
      'environmentVariables': ?environmentVariables,
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'readinessProbe': ?readinessProbe == null ? null : readinessProbe!.toMap(),
      'resourceRequests': ?resourceRequests == null ? null : resourceRequests!.toMap(),
      'scale': ?scale == null ? null : scale!.toMap(),
      'startupProbe': ?startupProbe == null ? null : startupProbe!.toMap(),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
    };
  }

  factory DeploymentSettings.fromMap(Map<String, dynamic> map) {
    return DeploymentSettings(
      addonConfigs: map['addonConfigs'] == null ? null : (map['addonConfigs'] as Map).cast<String, dynamic>(),
      apms: map['apms'] == null ? null : pulumi.Input.decodeList<ApmReference>(map['apms'], (value) => ApmReference.fromMap((value as Map).cast<String, dynamic>())),
      containerProbeSettings: map['containerProbeSettings'] == null ? null : ContainerProbeSettings.fromMap((map['containerProbeSettings'] as Map).cast<String, dynamic>()),
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      livenessProbe: map['livenessProbe'] == null ? null : Probe.fromMap((map['livenessProbe'] as Map).cast<String, dynamic>()),
      readinessProbe: map['readinessProbe'] == null ? null : Probe.fromMap((map['readinessProbe'] as Map).cast<String, dynamic>()),
      resourceRequests: map['resourceRequests'] == null ? null : ResourceRequests.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>()),
      scale: map['scale'] == null ? null : Scale.fromMap((map['scale'] as Map).cast<String, dynamic>()),
      startupProbe: map['startupProbe'] == null ? null : Probe.fromMap((map['startupProbe'] as Map).cast<String, dynamic>()),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : map['terminationGracePeriodSeconds'] as int,
    );
  }
}

