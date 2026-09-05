// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_training_specification_supported_hyper_parameter_range.dart';

class AlgorithmTrainingSpecificationSupportedHyperParameter {
  /// Default value for the hyperparameter.
  final pulumi.Input<String?>? defaultValue;
  /// Description of the hyperparameter.
  final pulumi.Input<String?>? description;
  /// Whether the hyperparameter is required.
  final pulumi.Input<bool?>? isRequired;
  /// Whether the hyperparameter can be tuned.
  final pulumi.Input<bool?>? isTunable;
  /// Hyperparameter name.
  final pulumi.Input<String> name;
  /// Allowed value range for the hyperparameter. See Parameter Range.
  final pulumi.Input<AlgorithmTrainingSpecificationSupportedHyperParameterRange?>? range;
  /// Hyperparameter type. Allowed values are: `Integer`, `Continuous`, `Categorical`, and `FreeText`.
  final pulumi.Input<String> type;

  /// Creates a new [AlgorithmTrainingSpecificationSupportedHyperParameter].
  /// [defaultValue] Default value for the hyperparameter.
  /// [description] Description of the hyperparameter.
  /// [isRequired] Whether the hyperparameter is required.
  /// [isTunable] Whether the hyperparameter can be tuned.
  /// [name] Hyperparameter name.
  /// [range] Allowed value range for the hyperparameter. See Parameter Range.
  /// [type] Hyperparameter type. Allowed values are: `Integer`, `Continuous`, `Categorical`, and `FreeText`.
  const AlgorithmTrainingSpecificationSupportedHyperParameter({
    this.defaultValue,
    this.description,
    this.isRequired,
    this.isTunable,
    required this.name,
    this.range,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'isRequired': ?isRequired,
      'isTunable': ?isTunable,
      'name': name,
      'range': ?pulumi.Input.mapOptionalInputValue<AlgorithmTrainingSpecificationSupportedHyperParameterRange, Map<String, dynamic>>(range, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AlgorithmTrainingSpecificationSupportedHyperParameter.fromMap(Map<String, dynamic> map) {
    return AlgorithmTrainingSpecificationSupportedHyperParameter(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRequired: (() { final guardedValue = map['isRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isTunable: (() { final guardedValue = map['isTunable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmTrainingSpecificationSupportedHyperParameterRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
