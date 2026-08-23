// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter {
  /// Parameter name.
  final pulumi.Input<String> name;
  /// Value hint for the parameter.
  final pulumi.Input<String> valueHint;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter].
  /// [name] Parameter name.
  /// [valueHint] Value hint for the parameter.
  const HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter({
    required this.name,
    required this.valueHint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'valueHint': valueHint,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      valueHint: pulumi.Input.fromValue(map['valueHint'] as String),
    );
  }
}
