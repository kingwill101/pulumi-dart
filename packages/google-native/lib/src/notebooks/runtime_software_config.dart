// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'runtime_software_config_post_startup_script_behavior.dart';

/// Specifies the selection and configuration of software inside the runtime. The properties to set on runtime. Properties keys are specified in `key:value` format, for example: * `idle_shutdown: true` * `idle_shutdown_timeout: 180` * `enable_health_monitoring: true`
class RuntimeSoftwareConfig {
  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final String? customGpuDriverPath;

  /// Bool indicating whether JupyterLab terminal will be available or not. Default: False
  final bool? disableTerminal;

  /// Verifies core internal services are running. Default: True
  final bool? enableHealthMonitoring;

  /// Runtime will automatically shutdown after idle_shutdown_time. Default: True
  final bool? idleShutdown;

  /// Time in minutes to wait before shutting down runtime. Default: 180 minutes
  final int? idleShutdownTimeout;

  /// Install Nvidia Driver automatically. Default: True
  final bool? installGpuDriver;

  /// Optional. Use a list of container images to use as Kernels in the notebook instance.
  final List<ContainerImage>? kernels;

  /// Bool indicating whether mixer client should be disabled. Default: False
  final bool? mixerDisabled;

  /// Cron expression in UTC timezone, used to schedule instance auto upgrade. Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  final String? notebookUpgradeSchedule;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  final String? postStartupScript;

  /// Behavior for the post startup script.
  final RuntimeSoftwareConfigPostStartupScriptBehavior?
      postStartupScriptBehavior;

  /// Creates a new [RuntimeSoftwareConfig].
  /// [customGpuDriverPath] Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  /// [disableTerminal] Bool indicating whether JupyterLab terminal will be available or not. Default: False
  /// [enableHealthMonitoring] Verifies core internal services are running. Default: True
  /// [idleShutdown] Runtime will automatically shutdown after idle_shutdown_time. Default: True
  /// [idleShutdownTimeout] Time in minutes to wait before shutting down runtime. Default: 180 minutes
  /// [installGpuDriver] Install Nvidia Driver automatically. Default: True
  /// [kernels] Optional. Use a list of container images to use as Kernels in the notebook instance.
  /// [mixerDisabled] Bool indicating whether mixer client should be disabled. Default: False
  /// [notebookUpgradeSchedule] Cron expression in UTC timezone, used to schedule instance auto upgrade. Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  /// [postStartupScriptBehavior] Behavior for the post startup script.
  RuntimeSoftwareConfig({
    this.customGpuDriverPath,
    this.disableTerminal,
    this.enableHealthMonitoring,
    this.idleShutdown,
    this.idleShutdownTimeout,
    this.installGpuDriver,
    this.kernels,
    this.mixerDisabled,
    this.notebookUpgradeSchedule,
    this.postStartupScript,
    this.postStartupScriptBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customGpuDriverPathValue = customGpuDriverPath;
    if (customGpuDriverPathValue != null) {
      map['customGpuDriverPath'] = customGpuDriverPathValue;
    }
    final disableTerminalValue = disableTerminal;
    if (disableTerminalValue != null) {
      map['disableTerminal'] = disableTerminalValue;
    }
    final enableHealthMonitoringValue = enableHealthMonitoring;
    if (enableHealthMonitoringValue != null) {
      map['enableHealthMonitoring'] = enableHealthMonitoringValue;
    }
    final idleShutdownValue = idleShutdown;
    if (idleShutdownValue != null) {
      map['idleShutdown'] = idleShutdownValue;
    }
    final idleShutdownTimeoutValue = idleShutdownTimeout;
    if (idleShutdownTimeoutValue != null) {
      map['idleShutdownTimeout'] = idleShutdownTimeoutValue;
    }
    final installGpuDriverValue = installGpuDriver;
    if (installGpuDriverValue != null) {
      map['installGpuDriver'] = installGpuDriverValue;
    }
    final kernelsValue = kernels;
    if (kernelsValue != null) {
      map['kernels'] =
          pulumi.Input.encodeList<ContainerImage, Map<String, dynamic>>(
              kernelsValue, (value) => value.toMap());
    }
    final mixerDisabledValue = mixerDisabled;
    if (mixerDisabledValue != null) {
      map['mixerDisabled'] = mixerDisabledValue;
    }
    final notebookUpgradeScheduleValue = notebookUpgradeSchedule;
    if (notebookUpgradeScheduleValue != null) {
      map['notebookUpgradeSchedule'] = notebookUpgradeScheduleValue;
    }
    final postStartupScriptValue = postStartupScript;
    if (postStartupScriptValue != null) {
      map['postStartupScript'] = postStartupScriptValue;
    }
    final postStartupScriptBehaviorValue = postStartupScriptBehavior;
    if (postStartupScriptBehaviorValue != null) {
      map['postStartupScriptBehavior'] = postStartupScriptBehaviorValue.value;
    }
    return map;
  }

  factory RuntimeSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeSoftwareConfig(
      customGpuDriverPath: map['customGpuDriverPath'] == null
          ? null
          : map['customGpuDriverPath'] as String,
      disableTerminal: map['disableTerminal'] == null
          ? null
          : map['disableTerminal'] as bool,
      enableHealthMonitoring: map['enableHealthMonitoring'] == null
          ? null
          : map['enableHealthMonitoring'] as bool,
      idleShutdown:
          map['idleShutdown'] == null ? null : map['idleShutdown'] as bool,
      idleShutdownTimeout: map['idleShutdownTimeout'] == null
          ? null
          : map['idleShutdownTimeout'] as int,
      installGpuDriver: map['installGpuDriver'] == null
          ? null
          : map['installGpuDriver'] as bool,
      kernels: map['kernels'] == null
          ? null
          : pulumi.Input.decodeList<ContainerImage>(
              map['kernels'],
              (value) => ContainerImage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mixerDisabled:
          map['mixerDisabled'] == null ? null : map['mixerDisabled'] as bool,
      notebookUpgradeSchedule: map['notebookUpgradeSchedule'] == null
          ? null
          : map['notebookUpgradeSchedule'] as String,
      postStartupScript: map['postStartupScript'] == null
          ? null
          : map['postStartupScript'] as String,
      postStartupScriptBehavior: map['postStartupScriptBehavior'] == null
          ? null
          : RuntimeSoftwareConfigPostStartupScriptBehavior.fromValue(
              map['postStartupScriptBehavior'] as String),
    );
  }
}
