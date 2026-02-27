// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<String>? batchId;

  /// Environment configuration for the batch execution.
  /// Structure is documented below.
  final pulumi.Input<BatchEnvironmentConfig>? environmentConfig;

  /// The labels to associate with this batch.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location in which the batch will be created in.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// PySpark batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchPysparkBatch>? pysparkBatch;

  /// Runtime configuration for the batch execution.
  /// Structure is documented below.
  final pulumi.Input<BatchRuntimeConfig>? runtimeConfig;

  /// Spark batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkBatch>? sparkBatch;

  /// SparkR batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkRBatch>? sparkRBatch;

  /// Spark SQL batch config.
  /// Structure is documented below.
  final pulumi.Input<BatchSparkSqlBatch>? sparkSqlBatch;

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
      map['environmentConfig'] = pulumi.Input.mapOptionalInputValue<
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
      map['pysparkBatch'] = pulumi.Input.mapOptionalInputValue<
          BatchPysparkBatch,
          Map<String, dynamic>>(pysparkBatchValue, (value) => value.toMap());
    }
    final runtimeConfigValue = runtimeConfig;
    if (runtimeConfigValue != null) {
      map['runtimeConfig'] = pulumi.Input.mapOptionalInputValue<
          BatchRuntimeConfig,
          Map<String, dynamic>>(runtimeConfigValue, (value) => value.toMap());
    }
    final sparkBatchValue = sparkBatch;
    if (sparkBatchValue != null) {
      map['sparkBatch'] = pulumi.Input.mapOptionalInputValue<BatchSparkBatch,
          Map<String, dynamic>>(sparkBatchValue, (value) => value.toMap());
    }
    final sparkRBatchValue = sparkRBatch;
    if (sparkRBatchValue != null) {
      map['sparkRBatch'] = pulumi.Input.mapOptionalInputValue<BatchSparkRBatch,
          Map<String, dynamic>>(sparkRBatchValue, (value) => value.toMap());
    }
    final sparkSqlBatchValue = sparkSqlBatch;
    if (sparkSqlBatchValue != null) {
      map['sparkSqlBatch'] = pulumi.Input.mapOptionalInputValue<
          BatchSparkSqlBatch,
          Map<String, dynamic>>(sparkSqlBatchValue, (value) => value.toMap());
    }
    return map;
  }

  factory BatchArgs.fromMap(Map<String, dynamic> map) {
    return BatchArgs(
      batchId: pulumi.Input.asOptionalInput<String>(map['batchId']),
      environmentConfig: pulumi.Input.asOptionalInput<BatchEnvironmentConfig>(
          map['environmentConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pysparkBatch:
          pulumi.Input.asOptionalInput<BatchPysparkBatch>(map['pysparkBatch']),
      runtimeConfig: pulumi.Input.asOptionalInput<BatchRuntimeConfig>(
          map['runtimeConfig']),
      sparkBatch:
          pulumi.Input.asOptionalInput<BatchSparkBatch>(map['sparkBatch']),
      sparkRBatch:
          pulumi.Input.asOptionalInput<BatchSparkRBatch>(map['sparkRBatch']),
      sparkSqlBatch: pulumi.Input.asOptionalInput<BatchSparkSqlBatch>(
          map['sparkSqlBatch']),
    );
  }
}
