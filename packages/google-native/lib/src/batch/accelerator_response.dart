// ignore_for_file: unused_element, unnecessary_cast

/// Accelerator describes Compute Engine accelerators to be attached to the VM.
class AcceleratorResponse {
  /// The number of accelerators of this type.
  final String count;

  /// Optional. The NVIDIA GPU driver version that should be installed for this type. You can define the specific driver version such as "470.103.01", following the driver version requirements in https://cloud.google.com/compute/docs/gpus/install-drivers-gpu#minimum-driver. Batch will install the specific accelerator driver if qualified.
  final String driverVersion;

  /// Deprecated: please use instances[0].install_gpu_drivers instead.
  final bool installGpuDrivers;

  /// The accelerator type. For example, "nvidia-tesla-t4". See `gcloud compute accelerator-types list`.
  final String type;

  /// Creates a new [AcceleratorResponse].
  /// [count] The number of accelerators of this type.
  /// [driverVersion] Optional. The NVIDIA GPU driver version that should be installed for this type. You can define the specific driver version such as "470.103.01", following the driver version requirements in https://cloud.google.com/compute/docs/gpus/install-drivers-gpu#minimum-driver. Batch will install the specific accelerator driver if qualified.
  /// [installGpuDrivers] Deprecated: please use instances[0].install_gpu_drivers instead.
  /// [type] The accelerator type. For example, "nvidia-tesla-t4". See `gcloud compute accelerator-types list`.
  AcceleratorResponse({
    required this.count,
    required this.driverVersion,
    required this.installGpuDrivers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['driverVersion'] = driverVersion;
    map['installGpuDrivers'] = installGpuDrivers;
    map['type'] = type;
    return map;
  }

  factory AcceleratorResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorResponse(
      count: map['count'] as String,
      driverVersion: map['driverVersion'] as String,
      installGpuDrivers: map['installGpuDrivers'] as bool,
      type: map['type'] as String,
    );
  }
}
