// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../batch_environment_config/batch_environment_config.dart';
import '../batch_pyspark_batch/batch_pyspark_batch.dart';
import '../batch_runtime_config/batch_runtime_config.dart';
import '../batch_spark_batch/batch_spark_batch.dart';
import '../batch_spark_rbatch/batch_spark_rbatch.dart';
import '../batch_spark_sql_batch/batch_spark_sql_batch.dart';

/// The set of arguments for Batch.
class BatchArgs {
  /// The ID to use for the batch, which will become the final component of the batch's resource name.
  /// This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  final Input<String>? batchId;

  /// Environment configuration for the batch execution.
  /// Structure is documented below.
  final Input<BatchEnvironmentConfig>? environmentConfig;

  /// The labels to associate with this batch.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location in which the batch will be created in.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// PySpark batch config.
  /// Structure is documented below.
  final Input<BatchPysparkBatch>? pysparkBatch;

  /// Runtime configuration for the batch execution.
  /// Structure is documented below.
  final Input<BatchRuntimeConfig>? runtimeConfig;

  /// Spark batch config.
  /// Structure is documented below.
  final Input<BatchSparkBatch>? sparkBatch;

  /// SparkR batch config.
  /// Structure is documented below.
  final Input<BatchSparkRBatch>? sparkRBatch;

  /// Spark SQL batch config.
  /// Structure is documented below.
  final Input<BatchSparkSqlBatch>? sparkSqlBatch;

  BatchArgs({
    this.batchId,
    this.environmentConfig,
    this.labels,
    this.location,
    this.project,
    this.pysparkBatch,
    this.runtimeConfig,
    this.sparkBatch,
    this.sparkRBatch,
    this.sparkSqlBatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchIdValue = batchId;
    if (batchIdValue != null) {
      map['batchId'] = batchIdValue;
    }
    final environmentConfigValue = environmentConfig;
    if (environmentConfigValue != null) {
      map['environmentConfig'] = Input.mapOptionalInputValue<
              BatchEnvironmentConfig, Map<String, dynamic>>(
          environmentConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pysparkBatchValue = pysparkBatch;
    if (pysparkBatchValue != null) {
      map['pysparkBatch'] =
          Input.mapOptionalInputValue<BatchPysparkBatch, Map<String, dynamic>>(
              pysparkBatchValue, (value) => value.toMap());
    }
    final runtimeConfigValue = runtimeConfig;
    if (runtimeConfigValue != null) {
      map['runtimeConfig'] =
          Input.mapOptionalInputValue<BatchRuntimeConfig, Map<String, dynamic>>(
              runtimeConfigValue, (value) => value.toMap());
    }
    final sparkBatchValue = sparkBatch;
    if (sparkBatchValue != null) {
      map['sparkBatch'] =
          Input.mapOptionalInputValue<BatchSparkBatch, Map<String, dynamic>>(
              sparkBatchValue, (value) => value.toMap());
    }
    final sparkRBatchValue = sparkRBatch;
    if (sparkRBatchValue != null) {
      map['sparkRBatch'] =
          Input.mapOptionalInputValue<BatchSparkRBatch, Map<String, dynamic>>(
              sparkRBatchValue, (value) => value.toMap());
    }
    final sparkSqlBatchValue = sparkSqlBatch;
    if (sparkSqlBatchValue != null) {
      map['sparkSqlBatch'] =
          Input.mapOptionalInputValue<BatchSparkSqlBatch, Map<String, dynamic>>(
              sparkSqlBatchValue, (value) => value.toMap());
    }
    return map;
  }

  factory BatchArgs.fromMap(Map<String, dynamic> map) {
    return BatchArgs(
      batchId: Input.asOptionalInput<String>(map['batchId']),
      environmentConfig: Input.asOptionalInput<BatchEnvironmentConfig>(
          map['environmentConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      pysparkBatch:
          Input.asOptionalInput<BatchPysparkBatch>(map['pysparkBatch']),
      runtimeConfig:
          Input.asOptionalInput<BatchRuntimeConfig>(map['runtimeConfig']),
      sparkBatch: Input.asOptionalInput<BatchSparkBatch>(map['sparkBatch']),
      sparkRBatch: Input.asOptionalInput<BatchSparkRBatch>(map['sparkRBatch']),
      sparkSqlBatch:
          Input.asOptionalInput<BatchSparkSqlBatch>(map['sparkSqlBatch']),
    );
  }
}
