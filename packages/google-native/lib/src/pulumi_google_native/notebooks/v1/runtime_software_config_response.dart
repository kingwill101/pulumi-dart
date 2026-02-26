// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'container_image_response.dart';

/// Specifies the selection and configuration of software inside the runtime. The properties to set on runtime. Properties keys are specified in `key:value` format, for example: * `idle_shutdown: true` * `idle_shutdown_timeout: 180` * `enable_health_monitoring: true`
class RuntimeSoftwareConfigResponse {
  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final String customGpuDriverPath;

  /// Bool indicating whether JupyterLab terminal will be available or not. Default: False
  final bool disableTerminal;

  /// Verifies core internal services are running. Default: True
  final bool enableHealthMonitoring;

  /// Runtime will automatically shutdown after idle_shutdown_time. Default: True
  final bool idleShutdown;

  /// Time in minutes to wait before shutting down runtime. Default: 180 minutes
  final int idleShutdownTimeout;

  /// Install Nvidia Driver automatically. Default: True
  final bool installGpuDriver;

  /// Optional. Use a list of container images to use as Kernels in the notebook instance.
  final List<ContainerImageResponse> kernels;

  /// Bool indicating whether mixer client should be disabled. Default: False
  final bool mixerDisabled;

  /// Cron expression in UTC timezone, used to schedule instance auto upgrade. Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  final String notebookUpgradeSchedule;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  final String postStartupScript;

  /// Behavior for the post startup script.
  final String postStartupScriptBehavior;

  /// Bool indicating whether an newer image is available in an image family.
  final bool upgradeable;

  /// version of boot image such as M100, from release label of the image.
  final String version;

  RuntimeSoftwareConfigResponse({
    required this.customGpuDriverPath,
    required this.disableTerminal,
    required this.enableHealthMonitoring,
    required this.idleShutdown,
    required this.idleShutdownTimeout,
    required this.installGpuDriver,
    required this.kernels,
    required this.mixerDisabled,
    required this.notebookUpgradeSchedule,
    required this.postStartupScript,
    required this.postStartupScriptBehavior,
    required this.upgradeable,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customGpuDriverPath'] = customGpuDriverPath;
    map['disableTerminal'] = disableTerminal;
    map['enableHealthMonitoring'] = enableHealthMonitoring;
    map['idleShutdown'] = idleShutdown;
    map['idleShutdownTimeout'] = idleShutdownTimeout;
    map['installGpuDriver'] = installGpuDriver;
    map['kernels'] =
        Input.encodeList<ContainerImageResponse, Map<String, dynamic>>(
            kernels, (value) => value.toMap());
    map['mixerDisabled'] = mixerDisabled;
    map['notebookUpgradeSchedule'] = notebookUpgradeSchedule;
    map['postStartupScript'] = postStartupScript;
    map['postStartupScriptBehavior'] = postStartupScriptBehavior;
    map['upgradeable'] = upgradeable;
    map['version'] = version;
    return map;
  }

  factory RuntimeSoftwareConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeSoftwareConfigResponse(
      customGpuDriverPath: map['customGpuDriverPath'] as String,
      disableTerminal: map['disableTerminal'] as bool,
      enableHealthMonitoring: map['enableHealthMonitoring'] as bool,
      idleShutdown: map['idleShutdown'] as bool,
      idleShutdownTimeout: map['idleShutdownTimeout'] as int,
      installGpuDriver: map['installGpuDriver'] as bool,
      kernels: Input.decodeList<ContainerImageResponse>(
          map['kernels'],
          (value) => ContainerImageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      mixerDisabled: map['mixerDisabled'] as bool,
      notebookUpgradeSchedule: map['notebookUpgradeSchedule'] as String,
      postStartupScript: map['postStartupScript'] as String,
      postStartupScriptBehavior: map['postStartupScriptBehavior'] as String,
      upgradeable: map['upgradeable'] as bool,
      version: map['version'] as String,
    );
  }
}
