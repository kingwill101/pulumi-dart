// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_training_specification_supported_hyper_parameter_range_categorical_parameter_range_specification.dart';
import 'algorithm_training_specification_supported_hyper_parameter_range_continuous_parameter_range_specification.dart';
import 'algorithm_training_specification_supported_hyper_parameter_range_integer_parameter_range_specification.dart';

class AlgorithmTrainingSpecificationSupportedHyperParameterRange {
  /// Categorical range definition. See Categorical Parameter Range Specification.
  final pulumi.Input<AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecification?>? categoricalParameterRangeSpecification;
  /// Continuous range definition. See Continuous Parameter Range Specification.
  final pulumi.Input<AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecification?>? continuousParameterRangeSpecification;
  /// Integer range definition. See Integer Parameter Range Specification.
  final pulumi.Input<AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecification?>? integerParameterRangeSpecification;

  /// Creates a new [AlgorithmTrainingSpecificationSupportedHyperParameterRange].
  /// [categoricalParameterRangeSpecification] Categorical range definition. See Categorical Parameter Range Specification.
  /// [continuousParameterRangeSpecification] Continuous range definition. See Continuous Parameter Range Specification.
  /// [integerParameterRangeSpecification] Integer range definition. See Integer Parameter Range Specification.
  const AlgorithmTrainingSpecificationSupportedHyperParameterRange({
    this.categoricalParameterRangeSpecification,
    this.continuousParameterRangeSpecification,
    this.integerParameterRangeSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalParameterRangeSpecification': ?pulumi.Input.mapOptionalInputValue<AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecification, Map<String, dynamic>>(categoricalParameterRangeSpecification, (value) => value.toMap()),
      'continuousParameterRangeSpecification': ?pulumi.Input.mapOptionalInputValue<AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecification, Map<String, dynamic>>(continuousParameterRangeSpecification, (value) => value.toMap()),
      'integerParameterRangeSpecification': ?pulumi.Input.mapOptionalInputValue<AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecification, Map<String, dynamic>>(integerParameterRangeSpecification, (value) => value.toMap()),
    };
  }

  factory AlgorithmTrainingSpecificationSupportedHyperParameterRange.fromMap(Map<String, dynamic> map) {
    return AlgorithmTrainingSpecificationSupportedHyperParameterRange(
      categoricalParameterRangeSpecification: (() { final guardedValue = map['categoricalParameterRangeSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmTrainingSpecificationSupportedHyperParameterRangeCategoricalParameterRangeSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      continuousParameterRangeSpecification: (() { final guardedValue = map['continuousParameterRangeSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmTrainingSpecificationSupportedHyperParameterRangeContinuousParameterRangeSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integerParameterRangeSpecification: (() { final guardedValue = map['integerParameterRangeSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmTrainingSpecificationSupportedHyperParameterRangeIntegerParameterRangeSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
