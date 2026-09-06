// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltable_job_input_response.dart';
import 'regression_training_settings_response.dart';
import 'table_vertical_featurization_settings_response.dart';
import 'table_vertical_limit_settings_response.dart';

/// Regression task in AutoML Table vertical.
class RegressionResponse {
  /// Columns to use for CVSplit data.
  final pulumi.Input<List<String>?>? cvSplitColumnNames;
  /// Featurization inputs needed for AutoML job.
  final pulumi.Input<TableVerticalFeaturizationSettingsResponse?>? featurizationSettings;
  /// Execution constraints for AutoMLJob.
  final pulumi.Input<TableVerticalLimitSettingsResponse?>? limitSettings;
  /// Enum for setting log verbosity.
  final pulumi.Input<String?>? logVerbosity;
  /// Number of cross validation folds to be applied on training dataset
  /// when validation dataset is not provided.
  final pulumi.Input<dynamic>? nCrossValidations;
  /// Primary metrics for Regression task.
  final pulumi.Input<String?>? primaryMetric;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final pulumi.Input<String?>? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'Regression'.
  final pulumi.Input<String> taskType;
  /// Test data input.
  final pulumi.Input<MLTableJobInputResponse?>? testData;
  /// The fraction of test dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final pulumi.Input<double?>? testDataSize;
  /// [Required] Training data input.
  final pulumi.Input<MLTableJobInputResponse> trainingData;
  /// Inputs for training phase for an AutoML Job.
  final pulumi.Input<RegressionTrainingSettingsResponse?>? trainingSettings;
  /// Validation data inputs.
  final pulumi.Input<MLTableJobInputResponse?>? validationData;
  /// The fraction of training dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final pulumi.Input<double?>? validationDataSize;
  /// The name of the sample weight column. Automated ML supports a weighted column as an input, causing rows in the data to be weighted up or down.
  final pulumi.Input<String?>? weightColumnName;

  /// Creates a new [RegressionResponse].
  /// [cvSplitColumnNames] Columns to use for CVSplit data.
  /// [featurizationSettings] Featurization inputs needed for AutoML job.
  /// [limitSettings] Execution constraints for AutoMLJob.
  /// [logVerbosity] Enum for setting log verbosity.
  /// [nCrossValidations] Number of cross validation folds to be applied on training dataset
  /// [primaryMetric] Primary metrics for Regression task.
  /// [targetColumnName] Target column name: This is prediction values column.
  /// [taskType] AutoMLJob Task type.
  /// [testData] Test data input.
  /// [testDataSize] The fraction of test dataset that needs to be set aside for validation purpose.
  /// [trainingData] [Required] Training data input.
  /// [trainingSettings] Inputs for training phase for an AutoML Job.
  /// [validationData] Validation data inputs.
  /// [validationDataSize] The fraction of training dataset that needs to be set aside for validation purpose.
  /// [weightColumnName] The name of the sample weight column. Automated ML supports a weighted column as an input, causing rows in the data to be weighted up or down.
  RegressionResponse({
    this.cvSplitColumnNames,
    this.featurizationSettings,
    this.limitSettings,
    pulumi.Input<String?>? logVerbosity,
    this.nCrossValidations,
    pulumi.Input<String?>? primaryMetric,
    this.targetColumnName,
    required this.taskType,
    this.testData,
    this.testDataSize,
    required this.trainingData,
    this.trainingSettings,
    this.validationData,
    this.validationDataSize,
    this.weightColumnName,
  }) : logVerbosity = logVerbosity ?? pulumi.Input.fromValue('Info'), primaryMetric = primaryMetric ?? pulumi.Input.fromValue('NormalizedRootMeanSquaredError');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cvSplitColumnNames': ?cvSplitColumnNames,
      'featurizationSettings': ?pulumi.Input.mapOptionalInputValue<TableVerticalFeaturizationSettingsResponse, Map<String, dynamic>>(featurizationSettings, (value) => value.toMap()),
      'limitSettings': ?pulumi.Input.mapOptionalInputValue<TableVerticalLimitSettingsResponse, Map<String, dynamic>>(limitSettings, (value) => value.toMap()),
      'logVerbosity': ?logVerbosity,
      'nCrossValidations': ?nCrossValidations,
      'primaryMetric': ?primaryMetric,
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'testData': ?pulumi.Input.mapOptionalInputValue<MLTableJobInputResponse, Map<String, dynamic>>(testData, (value) => value.toMap()),
      'testDataSize': ?testDataSize,
      'trainingData': pulumi.Input.mapInputValue<MLTableJobInputResponse, Map<String, dynamic>>(trainingData, (value) => value.toMap()),
      'trainingSettings': ?pulumi.Input.mapOptionalInputValue<RegressionTrainingSettingsResponse, Map<String, dynamic>>(trainingSettings, (value) => value.toMap()),
      'validationData': ?pulumi.Input.mapOptionalInputValue<MLTableJobInputResponse, Map<String, dynamic>>(validationData, (value) => value.toMap()),
      'validationDataSize': ?validationDataSize,
      'weightColumnName': ?weightColumnName,
    };
  }

  factory RegressionResponse.fromMap(Map<String, dynamic> map) {
    return RegressionResponse(
      cvSplitColumnNames: (() { final guardedValue = map['cvSplitColumnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      featurizationSettings: (() { final guardedValue = map['featurizationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableVerticalFeaturizationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      limitSettings: (() { final guardedValue = map['limitSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableVerticalLimitSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logVerbosity: (() { final guardedValue = map['logVerbosity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nCrossValidations: (() { final guardedValue = map['nCrossValidations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      primaryMetric: (() { final guardedValue = map['primaryMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetColumnName: (() { final guardedValue = map['targetColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
      testData: (() { final guardedValue = map['testData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLTableJobInputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      testDataSize: (() { final guardedValue = map['testDataSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      trainingData: pulumi.Input.fromValue(MLTableJobInputResponse.fromMap((map['trainingData']! as Map).cast<String, dynamic>())),
      trainingSettings: (() { final guardedValue = map['trainingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegressionTrainingSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationData: (() { final guardedValue = map['validationData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLTableJobInputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationDataSize: (() { final guardedValue = map['validationDataSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      weightColumnName: (() { final guardedValue = map['weightColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
