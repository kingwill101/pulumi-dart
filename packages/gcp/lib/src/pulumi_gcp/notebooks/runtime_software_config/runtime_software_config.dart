// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../runtime_software_config_kernel/runtime_software_config_kernel.dart';

class RuntimeSoftwareConfig {
  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  /// If not specified, we'll automatically choose from official GPU drivers.
  final String? customGpuDriverPath;

  /// Verifies core internal services are running. Default: True.
  final bool? enableHealthMonitoring;

  /// Runtime will automatically shutdown after idle_shutdown_time.
  /// Default: True
  final bool? idleShutdown;

  /// Time in minutes to wait before shuting down runtime.
  /// Default: 180 minutes
  final int? idleShutdownTimeout;

  /// Install Nvidia Driver automatically.
  final bool? installGpuDriver;

  /// Use a list of container images to use as Kernels in the notebook instance.
  /// Structure is documented below.
  final List<RuntimeSoftwareConfigKernel>? kernels;

  /// Cron expression in UTC timezone for schedule instance auto upgrade.
  /// Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  final String? notebookUpgradeSchedule;

  /// Path to a Bash script that automatically runs after a notebook instance
  /// fully boots up. The path must be a URL or
  /// Cloud Storage path (gs://path-to-file/file-name).
  final String? postStartupScript;

  /// Behavior for the post startup script.
  /// Possible values are: `POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED`, `RUN_EVERY_START`, `DOWNLOAD_AND_RUN_EVERY_START`.
  final String? postStartupScriptBehavior;

  /// (Output)
  /// Bool indicating whether an newer image is available in an image family.
  final bool? upgradeable;

  RuntimeSoftwareConfig({
    this.customGpuDriverPath,
    this.enableHealthMonitoring,
    this.idleShutdown,
    this.idleShutdownTimeout,
    this.installGpuDriver,
    this.kernels,
    this.notebookUpgradeSchedule,
    this.postStartupScript,
    this.postStartupScriptBehavior,
    this.upgradeable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customGpuDriverPathValue = customGpuDriverPath;
    if (customGpuDriverPathValue != null) {
      map['customGpuDriverPath'] = customGpuDriverPathValue;
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
      map['kernels'] = pulumi.Input.encodeList<RuntimeSoftwareConfigKernel,
          Map<String, dynamic>>(kernelsValue, (value) => value.toMap());
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
      map['postStartupScriptBehavior'] = postStartupScriptBehaviorValue;
    }
    final upgradeableValue = upgradeable;
    if (upgradeableValue != null) {
      map['upgradeable'] = upgradeableValue;
    }
    return map;
  }

  factory RuntimeSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeSoftwareConfig(
      customGpuDriverPath: map['customGpuDriverPath'] == null
          ? null
          : map['customGpuDriverPath'] as String,
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
          : pulumi.Input.decodeList<RuntimeSoftwareConfigKernel>(
              map['kernels'],
              (value) => RuntimeSoftwareConfigKernel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      notebookUpgradeSchedule: map['notebookUpgradeSchedule'] == null
          ? null
          : map['notebookUpgradeSchedule'] as String,
      postStartupScript: map['postStartupScript'] == null
          ? null
          : map['postStartupScript'] as String,
      postStartupScriptBehavior: map['postStartupScriptBehavior'] == null
          ? null
          : map['postStartupScriptBehavior'] as String,
      upgradeable:
          map['upgradeable'] == null ? null : map['upgradeable'] as bool,
    );
  }
}
