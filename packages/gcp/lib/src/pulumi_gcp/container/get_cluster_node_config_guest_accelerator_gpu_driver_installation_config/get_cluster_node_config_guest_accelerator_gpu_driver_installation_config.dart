// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  final String gpuDriverVersion;

  GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gpuDriverVersion'] = gpuDriverVersion;
    return map;
  }

  factory GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig(
      gpuDriverVersion: map['gpuDriverVersion'] as String,
    );
  }
}
