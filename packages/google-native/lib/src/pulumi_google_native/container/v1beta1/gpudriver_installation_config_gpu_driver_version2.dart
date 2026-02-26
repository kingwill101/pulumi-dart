/// Mode for how the GPU driver is installed.
enum GPUDriverInstallationConfigGpuDriverVersion2 {
  gpuDriverVersionUnspecified("GPU_DRIVER_VERSION_UNSPECIFIED"),
  installationDisabled("INSTALLATION_DISABLED"),
  default_("DEFAULT"),
  latest("LATEST");

  const GPUDriverInstallationConfigGpuDriverVersion2(this.value);
  final String value;

  static GPUDriverInstallationConfigGpuDriverVersion2 fromValue(String value) {
    for (final item in GPUDriverInstallationConfigGpuDriverVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GPUDriverInstallationConfigGpuDriverVersion2 value: $value');
  }
}
