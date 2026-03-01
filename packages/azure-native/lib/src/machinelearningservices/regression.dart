// ignore_for_file: unused_element, unnecessary_cast

import 'auto_ncross_validations.dart';
import 'mltable_job_input.dart';
import 'regression_training_settings.dart';
import 'table_vertical_featurization_settings.dart';
import 'table_vertical_limit_settings.dart';

/// Regression task in AutoML Table vertical.
class Regression {
  /// Columns to use for CVSplit data.
  final List<String>? cvSplitColumnNames;
  /// Featurization inputs needed for AutoML job.
  final TableVerticalFeaturizationSettings? featurizationSettings;
  /// Execution constraints for AutoMLJob.
  final TableVerticalLimitSettings? limitSettings;
  /// Log verbosity for the job.
  final String? logVerbosity;
  /// Number of cross validation folds to be applied on training dataset
  /// when validation dataset is not provided.
  final AutoNCrossValidations? nCrossValidations;
  /// Primary metric for regression task.
  final String? primaryMetric;
  /// Target column name: This is prediction values column.
  /// Also known as label column name in context of classification tasks.
  final String? targetColumnName;
  /// AutoMLJob Task type.
  /// Expected value is 'Regression'.
  final String taskType;
  /// Test data input.
  final MLTableJobInput? testData;
  /// The fraction of test dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final double? testDataSize;
  /// [Required] Training data input.
  final MLTableJobInput trainingData;
  /// Inputs for training phase for an AutoML Job.
  final RegressionTrainingSettings? trainingSettings;
  /// Validation data inputs.
  final MLTableJobInput? validationData;
  /// The fraction of training dataset that needs to be set aside for validation purpose.
  /// Values between (0.0 , 1.0)
  /// Applied when validation dataset is not provided.
  final double? validationDataSize;
  /// The name of the sample weight column. Automated ML supports a weighted column as an input, causing rows in the data to be weighted up or down.
  final String? weightColumnName;

  /// Creates a new [Regression].
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
  Regression({
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
      'featurizationSettings': ?featurizationSettings == null ? null : featurizationSettings!.toMap(),
      'limitSettings': ?limitSettings == null ? null : limitSettings!.toMap(),
      'logVerbosity': ?logVerbosity,
      'nCrossValidations': ?nCrossValidations == null ? null : nCrossValidations!.toMap(),
      'primaryMetric': ?primaryMetric,
      'targetColumnName': ?targetColumnName,
      'taskType': taskType,
      'testData': ?testData == null ? null : testData!.toMap(),
      'testDataSize': ?testDataSize,
      'trainingData': trainingData.toMap(),
      'trainingSettings': ?trainingSettings == null ? null : trainingSettings!.toMap(),
      'validationData': ?validationData == null ? null : validationData!.toMap(),
      'validationDataSize': ?validationDataSize,
      'weightColumnName': ?weightColumnName,
    };
  }

  factory Regression.fromMap(Map<String, dynamic> map) {
    return Regression(
      cvSplitColumnNames: map['cvSplitColumnNames'] == null ? null : (map['cvSplitColumnNames'] as List).cast<String>(),
      featurizationSettings: map['featurizationSettings'] == null ? null : TableVerticalFeaturizationSettings.fromMap((map['featurizationSettings'] as Map).cast<String, dynamic>()),
      limitSettings: map['limitSettings'] == null ? null : TableVerticalLimitSettings.fromMap((map['limitSettings'] as Map).cast<String, dynamic>()),
      logVerbosity: map['logVerbosity'] == null ? null : map['logVerbosity'] as String,
      nCrossValidations: map['nCrossValidations'] == null ? null : AutoNCrossValidations.fromMap((map['nCrossValidations'] as Map).cast<String, dynamic>()),
      primaryMetric: map['primaryMetric'] == null ? null : map['primaryMetric'] as String,
      targetColumnName: map['targetColumnName'] == null ? null : map['targetColumnName'] as String,
      taskType: map['taskType'] as String,
      testData: map['testData'] == null ? null : MLTableJobInput.fromMap((map['testData'] as Map).cast<String, dynamic>()),
      testDataSize: map['testDataSize'] == null ? null : map['testDataSize'] as double,
      trainingData: MLTableJobInput.fromMap((map['trainingData'] as Map).cast<String, dynamic>()),
      trainingSettings: map['trainingSettings'] == null ? null : RegressionTrainingSettings.fromMap((map['trainingSettings'] as Map).cast<String, dynamic>()),
      validationData: map['validationData'] == null ? null : MLTableJobInput.fromMap((map['validationData'] as Map).cast<String, dynamic>()),
      validationDataSize: map['validationDataSize'] == null ? null : map['validationDataSize'] as double,
      weightColumnName: map['weightColumnName'] == null ? null : map['weightColumnName'] as String,
    );
  }
}

