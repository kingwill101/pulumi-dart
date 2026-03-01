// ignore_for_file: unused_element, unnecessary_cast

import 'gpudriver_installation_config_gpu_driver_version.dart';

/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
class GPUDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  final GPUDriverInstallationConfigGpuDriverVersion? gpuDriverVersion;

  /// Creates a new [GPUDriverInstallationConfig].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  GPUDriverInstallationConfig({this.gpuDriverVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuDriverVersion': ?gpuDriverVersion == null
          ? null
          : gpuDriverVersion!.value,
    };
  }

  factory GPUDriverInstallationConfig.fromMap(Map<String, dynamic> map) {
    return GPUDriverInstallationConfig(
      gpuDriverVersion: map['gpuDriverVersion'] == null
          ? null
          : GPUDriverInstallationConfigGpuDriverVersion.fromValue(
              map['gpuDriverVersion'] as String,
            ),
    );
  }
}
