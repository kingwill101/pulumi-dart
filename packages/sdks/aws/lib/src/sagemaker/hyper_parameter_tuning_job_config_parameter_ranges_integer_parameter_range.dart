// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobConfigParameterRangesIntegerParameterRange {
  /// Maximum value.
  final pulumi.Input<String> maxValue;
  /// Minimum value.
  final pulumi.Input<String> minValue;
  /// Parameter name.
  final pulumi.Input<String> name;
  /// Scaling rule for the range.
  final pulumi.Input<String?>? scalingType;

  /// Creates a new [HyperParameterTuningJobConfigParameterRangesIntegerParameterRange].
  /// [maxValue] Maximum value.
  /// [minValue] Minimum value.
  /// [name] Parameter name.
  /// [scalingType] Scaling rule for the range.
  const HyperParameterTuningJobConfigParameterRangesIntegerParameterRange({
    required this.maxValue,
    required this.minValue,
    required this.name,
    this.scalingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': maxValue,
      'minValue': minValue,
      'name': name,
      'scalingType': ?scalingType,
    };
  }

  factory HyperParameterTuningJobConfigParameterRangesIntegerParameterRange.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigParameterRangesIntegerParameterRange(
      maxValue: pulumi.Input.fromValue(map['maxValue'] as String),
      minValue: pulumi.Input.fromValue(map['minValue'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      scalingType: (() { final guardedValue = map['scalingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
