// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_config_parameter_ranges_auto_parameter.dart';
import 'hyper_parameter_tuning_job_config_parameter_ranges_categorical_parameter_range.dart';
import 'hyper_parameter_tuning_job_config_parameter_ranges_continuous_parameter_range.dart';
import 'hyper_parameter_tuning_job_config_parameter_ranges_integer_parameter_range.dart';

class HyperParameterTuningJobConfigParameterRanges {
  /// Parameter list for automatic range selection.
  final pulumi.Input<List<HyperParameterTuningJobConfigParameterRangesAutoParameter>?>? autoParameters;
  /// Categorical parameter ranges.
  final pulumi.Input<List<HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange>?>? categoricalParameterRanges;
  /// Continuous parameter ranges.
  final pulumi.Input<List<HyperParameterTuningJobConfigParameterRangesContinuousParameterRange>?>? continuousParameterRanges;
  /// Integer parameter ranges.
  final pulumi.Input<List<HyperParameterTuningJobConfigParameterRangesIntegerParameterRange>?>? integerParameterRanges;

  /// Creates a new [HyperParameterTuningJobConfigParameterRanges].
  /// [autoParameters] Parameter list for automatic range selection.
  /// [categoricalParameterRanges] Categorical parameter ranges.
  /// [continuousParameterRanges] Continuous parameter ranges.
  /// [integerParameterRanges] Integer parameter ranges.
  const HyperParameterTuningJobConfigParameterRanges({
    this.autoParameters,
    this.categoricalParameterRanges,
    this.continuousParameterRanges,
    this.integerParameterRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoParameters': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobConfigParameterRangesAutoParameter>, List<Map<String, dynamic>>>(autoParameters, (value) => pulumi.Input.encodeList<HyperParameterTuningJobConfigParameterRangesAutoParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'categoricalParameterRanges': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange>, List<Map<String, dynamic>>>(categoricalParameterRanges, (value) => pulumi.Input.encodeList<HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'continuousParameterRanges': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobConfigParameterRangesContinuousParameterRange>, List<Map<String, dynamic>>>(continuousParameterRanges, (value) => pulumi.Input.encodeList<HyperParameterTuningJobConfigParameterRangesContinuousParameterRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integerParameterRanges': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobConfigParameterRangesIntegerParameterRange>, List<Map<String, dynamic>>>(integerParameterRanges, (value) => pulumi.Input.encodeList<HyperParameterTuningJobConfigParameterRangesIntegerParameterRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HyperParameterTuningJobConfigParameterRanges.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigParameterRanges(
      autoParameters: (() { final guardedValue = map['autoParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobConfigParameterRangesAutoParameter>(guardedValue, (value) => HyperParameterTuningJobConfigParameterRangesAutoParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      categoricalParameterRanges: (() { final guardedValue = map['categoricalParameterRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange>(guardedValue, (value) => HyperParameterTuningJobConfigParameterRangesCategoricalParameterRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      continuousParameterRanges: (() { final guardedValue = map['continuousParameterRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobConfigParameterRangesContinuousParameterRange>(guardedValue, (value) => HyperParameterTuningJobConfigParameterRangesContinuousParameterRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      integerParameterRanges: (() { final guardedValue = map['integerParameterRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobConfigParameterRangesIntegerParameterRange>(guardedValue, (value) => HyperParameterTuningJobConfigParameterRangesIntegerParameterRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
