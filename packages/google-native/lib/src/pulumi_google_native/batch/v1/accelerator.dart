// ignore_for_file: unused_element, unnecessary_cast

/// Accelerator describes Compute Engine accelerators to be attached to the VM.
class Accelerator {
  /// The number of accelerators of this type.
  final String? count;

  /// Optional. The NVIDIA GPU driver version that should be installed for this type. You can define the specific driver version such as "470.103.01", following the driver version requirements in https://cloud.google.com/compute/docs/gpus/install-drivers-gpu#minimum-driver. Batch will install the specific accelerator driver if qualified.
  final String? driverVersion;

  /// Deprecated: please use instances[0].install_gpu_drivers instead.
  final bool? installGpuDrivers;

  /// The accelerator type. For example, "nvidia-tesla-t4". See `gcloud compute accelerator-types list`.
  final String? type;

  Accelerator({
    this.count,
    this.driverVersion,
    this.installGpuDrivers,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final driverVersionValue = driverVersion;
    if (driverVersionValue != null) {
      map['driverVersion'] = driverVersionValue;
    }
    final installGpuDriversValue = installGpuDrivers;
    if (installGpuDriversValue != null) {
      map['installGpuDrivers'] = installGpuDriversValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory Accelerator.fromMap(Map<String, dynamic> map) {
    return Accelerator(
      count: map['count'] == null ? null : map['count'] as String,
      driverVersion:
          map['driverVersion'] == null ? null : map['driverVersion'] as String,
      installGpuDrivers: map['installGpuDrivers'] == null
          ? null
          : map['installGpuDrivers'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
