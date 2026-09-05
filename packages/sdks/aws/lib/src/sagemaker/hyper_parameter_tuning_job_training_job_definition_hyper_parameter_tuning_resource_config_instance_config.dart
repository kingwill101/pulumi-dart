// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig {
  /// Number of instances.
  final pulumi.Input<int?>? instanceCount;
  /// Instance type.
  final pulumi.Input<String?>? instanceType;
  /// Volume size in GB.
  final pulumi.Input<int?>? volumeSizeInGb;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig].
  /// [instanceCount] Number of instances.
  /// [instanceType] Instance type.
  /// [volumeSizeInGb] Volume size in GB.
  const HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig({
    this.instanceCount,
    this.instanceType,
    this.volumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType,
      'volumeSizeInGb': ?volumeSizeInGb,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionHyperParameterTuningResourceConfigInstanceConfig(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSizeInGb: (() { final guardedValue = map['volumeSizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
