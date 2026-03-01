// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  final String gpuDriverVersion;

  /// Creates a new [NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gpuDriverVersion': gpuDriverVersion};
  }

  factory NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig(
      gpuDriverVersion: map['gpuDriverVersion'] as String,
    );
  }
}
