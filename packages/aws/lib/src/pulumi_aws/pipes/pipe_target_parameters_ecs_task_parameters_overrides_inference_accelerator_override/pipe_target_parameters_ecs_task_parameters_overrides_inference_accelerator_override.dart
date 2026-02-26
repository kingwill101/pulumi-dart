// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride {
  /// The Elastic Inference accelerator device name to override for the task. This parameter must match a deviceName specified in the task definition.
  final String? deviceName;

  /// The Elastic Inference accelerator type to use.
  final String? deviceType;

  PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride({
    this.deviceName,
    this.deviceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final deviceTypeValue = deviceType;
    if (deviceTypeValue != null) {
      map['deviceType'] = deviceTypeValue;
    }
    return map;
  }

  factory PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      deviceType:
          map['deviceType'] == null ? null : map['deviceType'] as String,
    );
  }
}
