// ignore_for_file: unused_element, unnecessary_cast

/// A GPU driver configuration
class GPUDriverConfig {
  /// Optional. Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final String? customGpuDriverPath;

  /// Optional. Whether the end user authorizes Google Cloud to install GPU driver on this VM instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  final bool? enableGpuDriver;

  /// Creates a new [GPUDriverConfig].
  /// [customGpuDriverPath] Optional. Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  /// [enableGpuDriver] Optional. Whether the end user authorizes Google Cloud to install GPU driver on this VM instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  GPUDriverConfig({
    this.customGpuDriverPath,
    this.enableGpuDriver,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customGpuDriverPathValue = customGpuDriverPath;
    if (customGpuDriverPathValue != null) {
      map['customGpuDriverPath'] = customGpuDriverPathValue;
    }
    final enableGpuDriverValue = enableGpuDriver;
    if (enableGpuDriverValue != null) {
      map['enableGpuDriver'] = enableGpuDriverValue;
    }
    return map;
  }

  factory GPUDriverConfig.fromMap(Map<String, dynamic> map) {
    return GPUDriverConfig(
      customGpuDriverPath: map['customGpuDriverPath'] == null
          ? null
          : map['customGpuDriverPath'] as String,
      enableGpuDriver: map['enableGpuDriver'] == null
          ? null
          : map['enableGpuDriver'] as bool,
    );
  }
}
