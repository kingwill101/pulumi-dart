// ignore_for_file: unused_element, unnecessary_cast

import 'gpudriver_installation_config_gpu_driver_version2.dart';

/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
class GPUDriverInstallationConfig2 {
  /// Mode for how the GPU driver is installed.
  final GPUDriverInstallationConfigGpuDriverVersion2? gpuDriverVersion;

  GPUDriverInstallationConfig2({
    this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gpuDriverVersionValue = gpuDriverVersion;
    if (gpuDriverVersionValue != null) {
      map['gpuDriverVersion'] = gpuDriverVersionValue.value;
    }
    return map;
  }

  factory GPUDriverInstallationConfig2.fromMap(Map<String, dynamic> map) {
    return GPUDriverInstallationConfig2(
      gpuDriverVersion: map['gpuDriverVersion'] == null
          ? null
          : GPUDriverInstallationConfigGpuDriverVersion2.fromValue(
              map['gpuDriverVersion'] as String),
    );
  }
}
