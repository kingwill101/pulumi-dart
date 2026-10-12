// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride {
  /// Elastic Inference accelerator device name to override for the task. This parameter must match a deviceName specified in the task definition.
  final pulumi.Input<String?>? deviceName;
  /// Elastic Inference accelerator type to use.
  final pulumi.Input<String?>? deviceType;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride].
  /// [deviceName] Elastic Inference accelerator device name to override for the task. This parameter must match a deviceName specified in the task definition.
  /// [deviceType] Elastic Inference accelerator type to use.
  const PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride({
    this.deviceName,
    this.deviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'deviceType': ?deviceType,
    };
  }

  factory PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride(
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
