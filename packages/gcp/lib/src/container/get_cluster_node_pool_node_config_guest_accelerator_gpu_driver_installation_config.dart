// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  final String gpuDriverVersion;

  /// Creates a new [GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gpuDriverVersion'] = gpuDriverVersion;
    return map;
  }

  factory GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig(
      gpuDriverVersion: map['gpuDriverVersion'] as String,
    );
  }
}
