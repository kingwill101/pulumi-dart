// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_ncross_validations_response.dart';
import 'mltable_job_input_response.dart';
import 'regression_training_settings_response.dart';
import 'table_vertical_featurization_settings_response.dart';
import 'table_vertical_limit_settings_response.dart';

/// Regression task in AutoML Table vertical.
class RegressionResponse {
  /// Columns to use for CVSplit data.
  final pulumi.Input<List<String>>? cvSplitColumnNames;
  /// Featurization inputs needed for AutoML job.
  final pulumi.Input<TableVerticalFeaturizationSettingsResponse>? featurizationSettings;
  /// Execution constraints for AutoMLJob.
  final pulumi.Input<TableVerticalLimitSettingsResponse>? limitSettings;
  /// Log verbosity for the job.
  final pulumi.Input<String>? logVerbosity;
  /// Number of cross validation folds to be applied on training dataset
  /// when validation dataset is not provided.
  final pulumi.Input<AutoNCrossValidationsResponse>? nCrossValidations;
  /// Primary metric for regression task.
  final pulumi.Input<String>? primaryMetric;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final pulumi.Input<String>? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'Regression'.
  final pulumi.Input<String> taskType;
  /// Test data input.
  final pulumi.Input<MLTableJobInputResponse>? testData;
  /// The fraction of test dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final pulumi.Input<double>? testDataSize;
  /// [Required] Training data input.
  final pulumi.Input<MLTableJobInputResponse> trainingData;
  /// Inputs for training phase for an AutoML Job.
  final pulumi.Input<RegressionTrainingSettingsResponse>? trainingSettings;
  /// Validation data inputs.
  final pulumi.Input<MLTableJobInputResponse>? validationData;
  /// The fraction of training dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final pulumi.Input<double>? validationDataSize;
  /// The name of the sample weight column. Automated ML supports a weighted column as an input, causing rows in the data to be weighted up or down.
  final pulumi.Input<String>? weightColumnName;

  /// Creates a new [RegressionResponse].
  /// [cvSplitColumnNames] Columns to use for CVSplit data.
  /// [featurizationSettings] Featurization inputs needed for AutoML job.
  /// [limitSettings] Execution constraints for AutoMLJob.
  /// [logVerbosity] Log verbosity for the job.
  /// [nCrossValidations] Number of cross validation folds to be applied on training dataset
  /// [primaryMetric] Primary metric for regression task.
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
    this.logVerbosity,
    this.nCrossValidations,
    this.primaryMetric,
    this.targetColumnName,
    required this.taskType,
    this.testData,
    this.testDataSize,
    required this.trainingData,
    this.trainingSettings,
    this.validationData,
    this.validationDataSize,
    this.weightColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cvSplitColumnNames': ?cvSplitColumnNames,
      'featurizationSettings': ?pulumi.Input.mapOptionalInputValue<TableVerticalFeaturizationSettingsResponse, Map<String, dynamic>>(featurizationSettings, (value) => value.toMap()),
      'limitSettings': ?pulumi.Input.mapOptionalInputValue<TableVerticalLimitSettingsResponse, Map<String, dynamic>>(limitSettings, (value) => value.toMap()),
      'logVerbosity': ?logVerbosity,
      'nCrossValidations': ?pulumi.Input.mapOptionalInputValue<AutoNCrossValidationsResponse, Map<String, dynamic>>(nCrossValidations, (value) => value.toMap()),
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
      cvSplitColumnNames: map['cvSplitColumnNames'] == null ? null : ((map['cvSplitColumnNames'] as List).cast<String>()).input(),
      featurizationSettings: map['featurizationSettings'] == null ? null : (TableVerticalFeaturizationSettingsResponse.fromMap((map['featurizationSettings'] as Map).cast<String, dynamic>())).input(),
      limitSettings: map['limitSettings'] == null ? null : (TableVerticalLimitSettingsResponse.fromMap((map['limitSettings'] as Map).cast<String, dynamic>())).input(),
      logVerbosity: map['logVerbosity'] == null ? null : (map['logVerbosity'] as String).input(),
      nCrossValidations: map['nCrossValidations'] == null ? null : (AutoNCrossValidationsResponse.fromMap((map['nCrossValidations'] as Map).cast<String, dynamic>())).input(),
      primaryMetric: map['primaryMetric'] == null ? null : (map['primaryMetric'] as String).input(),
      targetColumnName: map['targetColumnName'] == null ? null : (map['targetColumnName'] as String).input(),
      taskType: (map['taskType'] as String).input(),
      testData: map['testData'] == null ? null : (MLTableJobInputResponse.fromMap((map['testData'] as Map).cast<String, dynamic>())).input(),
      testDataSize: map['testDataSize'] == null ? null : (map['testDataSize'] as double).input(),
      trainingData: (MLTableJobInputResponse.fromMap((map['trainingData'] as Map).cast<String, dynamic>())).input(),
      trainingSettings: map['trainingSettings'] == null ? null : (RegressionTrainingSettingsResponse.fromMap((map['trainingSettings'] as Map).cast<String, dynamic>())).input(),
      validationData: map['validationData'] == null ? null : (MLTableJobInputResponse.fromMap((map['validationData'] as Map).cast<String, dynamic>())).input(),
      validationDataSize: map['validationDataSize'] == null ? null : (map['validationDataSize'] as double).input(),
      weightColumnName: map['weightColumnName'] == null ? null : (map['weightColumnName'] as String).input(),
    );
  }
}

