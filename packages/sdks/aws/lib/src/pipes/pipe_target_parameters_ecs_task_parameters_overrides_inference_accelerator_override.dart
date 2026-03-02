// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride {
  /// The Elastic Inference accelerator device name to override for the task. This parameter must match a deviceName specified in the task definition.
  final pulumi.Input<String>? deviceName;
  /// The Elastic Inference accelerator type to use.
  final pulumi.Input<String>? deviceType;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride].
  /// [deviceName] The Elastic Inference accelerator device name to override for the task. This parameter must match a deviceName specified in the task definition.
  /// [deviceType] The Elastic Inference accelerator type to use.
  PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride({
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
      deviceName: map['deviceName'] == null ? null : (map['deviceName'] as String).input(),
      deviceType: map['deviceType'] == null ? null : (map['deviceType'] as String).input(),
    );
  }
}

