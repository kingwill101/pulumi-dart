// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  final String gpuDriverVersion;

  NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gpuDriverVersion'] = gpuDriverVersion;
    return map;
  }

  factory NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig(
      gpuDriverVersion: map['gpuDriverVersion'] as String,
    );
  }
}
