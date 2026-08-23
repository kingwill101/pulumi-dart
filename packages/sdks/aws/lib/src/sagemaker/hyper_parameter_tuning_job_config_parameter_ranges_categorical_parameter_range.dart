// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange {
  /// Parameter name.
  final pulumi.Input<String> name;
  /// Set of allowed values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange].
  /// [name] Parameter name.
  /// [values] Set of allowed values.
  const HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
