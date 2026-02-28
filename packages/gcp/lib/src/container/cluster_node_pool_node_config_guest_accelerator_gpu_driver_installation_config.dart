// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig {
  /// Mode for how the GPU driver is installed.
  /// Accepted values are:
  /// * `"GPU_DRIVER_VERSION_UNSPECIFIED"`: Default value is to install the "Default" GPU driver. Before GKE `1.30.1-gke.1156000`, the default value is to not install any GPU driver.
  /// * `"INSTALLATION_DISABLED"`: Disable GPU driver auto installation and needs manual installation.
  /// * `"DEFAULT"`: "Default" GPU driver in COS and Ubuntu.
  /// * `"LATEST"`: "Latest" GPU driver in COS.
  final String gpuDriverVersion;

  /// Creates a new [ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gpuDriverVersion'] = gpuDriverVersion;
    return map;
  }

  factory ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig(
      gpuDriverVersion: map['gpuDriverVersion'] as String,
    );
  }
}
