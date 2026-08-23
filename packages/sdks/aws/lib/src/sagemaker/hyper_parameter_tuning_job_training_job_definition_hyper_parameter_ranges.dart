// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_training_job_definition_hyper_parameter_ranges_auto_parameter.dart';
import 'hyper_parameter_tuning_job_training_job_definition_hyper_parameter_ranges_categorical_parameter_range.dart';
import 'hyper_parameter_tuning_job_training_job_definition_hyper_parameter_ranges_continuous_parameter_range.dart';
import 'hyper_parameter_tuning_job_training_job_definition_hyper_parameter_ranges_integer_parameter_range.dart';

class HyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges {
  /// Parameter list for automatic range selection.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter>>? autoParameters;
  /// Categorical parameter ranges.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesCategoricalParameterRange>>? categoricalParameterRanges;
  /// Continuous parameter ranges.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRange>>? continuousParameterRanges;
  /// Integer parameter ranges.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRange>>? integerParameterRanges;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges].
  /// [autoParameters] Parameter list for automatic range selection.
  /// [categoricalParameterRanges] Categorical parameter ranges.
  /// [continuousParameterRanges] Continuous parameter ranges.
  /// [integerParameterRanges] Integer parameter ranges.
  const HyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges({
    this.autoParameters,
    this.categoricalParameterRanges,
    this.continuousParameterRanges,
    this.integerParameterRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoParameters': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter>, List<Map<String, dynamic>>>(autoParameters, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'categoricalParameterRanges': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesCategoricalParameterRange>, List<Map<String, dynamic>>>(categoricalParameterRanges, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesCategoricalParameterRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'continuousParameterRanges': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRange>, List<Map<String, dynamic>>>(continuousParameterRanges, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integerParameterRanges': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRange>, List<Map<String, dynamic>>>(integerParameterRanges, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionHyperParameterRanges(
      autoParameters: (() { final guardedValue = map['autoParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesAutoParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      categoricalParameterRanges: (() { final guardedValue = map['categoricalParameterRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesCategoricalParameterRange>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesCategoricalParameterRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      continuousParameterRanges: (() { final guardedValue = map['continuousParameterRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRange>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesContinuousParameterRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      integerParameterRanges: (() { final guardedValue = map['integerParameterRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRange>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionHyperParameterRangesIntegerParameterRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
