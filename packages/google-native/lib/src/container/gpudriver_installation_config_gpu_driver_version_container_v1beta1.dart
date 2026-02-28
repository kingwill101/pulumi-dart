/// Mode for how the GPU driver is installed.
enum GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1 {
  gpuDriverVersionUnspecified("GPU_DRIVER_VERSION_UNSPECIFIED"),
  installationDisabled("INSTALLATION_DISABLED"),
  default_("DEFAULT"),
  latest("LATEST");

  const GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1(this.value);
  final String value;

  static GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1 fromValue(String value) {
    for (final item in GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GPUDriverInstallationConfigGpuDriverVersionContainerV1beta1 value: $value');
  }
}

