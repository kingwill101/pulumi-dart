// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_environment_config.dart';
import 'batch_pyspark_batch.dart';
import 'batch_runtime_config.dart';
import 'batch_spark_batch.dart';
import 'batch_spark_rbatch.dart';
import 'batch_spark_sql_batch.dart';

/// {@template pulumi_dataproc_batch_batch_args_doc}
/// The set of arguments for Batch.
/// {@endtemplate}
/// {@macro pulumi_dataproc_batch_batch_args_doc}
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

  /// Creates a new [BatchArgs].
  /// [batchId] The ID to use for the batch, which will become the final component of the batch's resource name.
  /// [environmentConfig] Environment configuration for the batch execution.
  /// [labels] The labels to associate with this batch.
  /// [location] The location in which the batch will be created in.
  /// [project] The ID of the project in which the resource belongs.
  /// [pysparkBatch] PySpark batch config.
  /// [runtimeConfig] Runtime configuration for the batch execution.
  /// [sparkBatch] Spark batch config.
  /// [sparkRBatch] SparkR batch config.
  /// [sparkSqlBatch] Spark SQL batch config.
  BatchArgs({
    String? batchId,
    BatchEnvironmentConfig? environmentConfig,
    Map<String, String>? labels,
    String? location,
    String? project,
    BatchPysparkBatch? pysparkBatch,
    BatchRuntimeConfig? runtimeConfig,
    BatchSparkBatch? sparkBatch,
    BatchSparkRBatch? sparkRBatch,
    BatchSparkSqlBatch? sparkSqlBatch,
  }) : batchId = pulumi.Input.asOptionalInput<String>(batchId),
       environmentConfig = pulumi.Input.asOptionalInput<BatchEnvironmentConfig>(
         environmentConfig,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       pysparkBatch = pulumi.Input.asOptionalInput<BatchPysparkBatch>(
         pysparkBatch,
       ),
       runtimeConfig = pulumi.Input.asOptionalInput<BatchRuntimeConfig>(
         runtimeConfig,
       ),
       sparkBatch = pulumi.Input.asOptionalInput<BatchSparkBatch>(sparkBatch),
       sparkRBatch = pulumi.Input.asOptionalInput<BatchSparkRBatch>(
         sparkRBatch,
       ),
       sparkSqlBatch = pulumi.Input.asOptionalInput<BatchSparkSqlBatch>(
         sparkSqlBatch,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchId': ?batchId,
      'environmentConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BatchEnvironmentConfig,
            Map<String, dynamic>
          >(environmentConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'pysparkBatch':
          ?pulumi.Input.mapOptionalInputValue<
            BatchPysparkBatch,
            Map<String, dynamic>
          >(pysparkBatch, (value) => value.toMap()),
      'runtimeConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BatchRuntimeConfig,
            Map<String, dynamic>
          >(runtimeConfig, (value) => value.toMap()),
      'sparkBatch':
          ?pulumi.Input.mapOptionalInputValue<
            BatchSparkBatch,
            Map<String, dynamic>
          >(sparkBatch, (value) => value.toMap()),
      'sparkRBatch':
          ?pulumi.Input.mapOptionalInputValue<
            BatchSparkRBatch,
            Map<String, dynamic>
          >(sparkRBatch, (value) => value.toMap()),
      'sparkSqlBatch':
          ?pulumi.Input.mapOptionalInputValue<
            BatchSparkSqlBatch,
            Map<String, dynamic>
          >(sparkSqlBatch, (value) => value.toMap()),
    };
  }

  factory BatchArgs.fromMap(Map<String, dynamic> map) {
    return BatchArgs(
      batchId: map['batchId'] == null ? null : map['batchId'] as String,
      environmentConfig: map['environmentConfig'] == null
          ? null
          : BatchEnvironmentConfig.fromMap(
              (map['environmentConfig'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pysparkBatch: map['pysparkBatch'] == null
          ? null
          : BatchPysparkBatch.fromMap(
              (map['pysparkBatch'] as Map).cast<String, dynamic>(),
            ),
      runtimeConfig: map['runtimeConfig'] == null
          ? null
          : BatchRuntimeConfig.fromMap(
              (map['runtimeConfig'] as Map).cast<String, dynamic>(),
            ),
      sparkBatch: map['sparkBatch'] == null
          ? null
          : BatchSparkBatch.fromMap(
              (map['sparkBatch'] as Map).cast<String, dynamic>(),
            ),
      sparkRBatch: map['sparkRBatch'] == null
          ? null
          : BatchSparkRBatch.fromMap(
              (map['sparkRBatch'] as Map).cast<String, dynamic>(),
            ),
      sparkSqlBatch: map['sparkSqlBatch'] == null
          ? null
          : BatchSparkSqlBatch.fromMap(
              (map['sparkSqlBatch'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
