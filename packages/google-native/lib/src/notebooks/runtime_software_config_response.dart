// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [RuntimeSoftwareConfigResponse].
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
  /// [upgradeable] Bool indicating whether an newer image is available in an image family.
  /// [version] version of boot image such as M100, from release label of the image.
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
    return <String, dynamic>{
      'customGpuDriverPath': customGpuDriverPath,
      'disableTerminal': disableTerminal,
      'enableHealthMonitoring': enableHealthMonitoring,
      'idleShutdown': idleShutdown,
      'idleShutdownTimeout': idleShutdownTimeout,
      'installGpuDriver': installGpuDriver,
      'kernels':
          pulumi.Input.encodeList<ContainerImageResponse, Map<String, dynamic>>(
            kernels,
            (value) => value.toMap(),
          ),
      'mixerDisabled': mixerDisabled,
      'notebookUpgradeSchedule': notebookUpgradeSchedule,
      'postStartupScript': postStartupScript,
      'postStartupScriptBehavior': postStartupScriptBehavior,
      'upgradeable': upgradeable,
      'version': version,
    };
  }

  factory RuntimeSoftwareConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeSoftwareConfigResponse(
      customGpuDriverPath: map['customGpuDriverPath'] as String,
      disableTerminal: map['disableTerminal'] as bool,
      enableHealthMonitoring: map['enableHealthMonitoring'] as bool,
      idleShutdown: map['idleShutdown'] as bool,
      idleShutdownTimeout: map['idleShutdownTimeout'] as int,
      installGpuDriver: map['installGpuDriver'] as bool,
      kernels: pulumi.Input.decodeList<ContainerImageResponse>(
        map['kernels'],
        (value) => ContainerImageResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      mixerDisabled: map['mixerDisabled'] as bool,
      notebookUpgradeSchedule: map['notebookUpgradeSchedule'] as String,
      postStartupScript: map['postStartupScript'] as String,
      postStartupScriptBehavior: map['postStartupScriptBehavior'] as String,
      upgradeable: map['upgradeable'] as bool,
      version: map['version'] as String,
    );
  }
}
