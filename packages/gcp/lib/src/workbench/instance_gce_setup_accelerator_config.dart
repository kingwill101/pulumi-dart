// ignore_for_file: unused_element, unnecessary_cast

class InstanceGceSetupAcceleratorConfig {
  /// Optional. Count of cores of this accelerator.
  final String? coreCount;

  /// Optional. Type of this accelerator.
  /// Possible values are: `NVIDIA_TESLA_P100`, `NVIDIA_TESLA_V100`, `NVIDIA_TESLA_P4`, `NVIDIA_TESLA_T4`, `NVIDIA_TESLA_A100`, `NVIDIA_A100_80GB`, `NVIDIA_L4`, `NVIDIA_TESLA_T4_VWS`, `NVIDIA_TESLA_P100_VWS`, `NVIDIA_TESLA_P4_VWS`.
  final String? type;

  /// Creates a new [InstanceGceSetupAcceleratorConfig].
  /// [coreCount] Optional. Count of cores of this accelerator.
  /// [type] Optional. Type of this accelerator.
  InstanceGceSetupAcceleratorConfig({
    this.coreCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final coreCountValue = coreCount;
    if (coreCountValue != null) {
      map['coreCount'] = coreCountValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory InstanceGceSetupAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupAcceleratorConfig(
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
