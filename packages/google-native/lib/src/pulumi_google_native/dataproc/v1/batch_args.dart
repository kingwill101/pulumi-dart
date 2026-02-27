// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'environment_config3.dart';
import 'py_spark_batch.dart';
import 'runtime_config2.dart';
import 'spark_batch.dart';
import 'spark_rbatch.dart';
import 'spark_sql_batch.dart';

/// The set of arguments for Batch.
class BatchArgs {
  /// Optional. The ID to use for the batch, which will become the final component of the batch's resource name.This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  final Input<String>? batchId;

  /// Optional. Environment configuration for the batch execution.
  final Input<EnvironmentConfig3>? environmentConfig;

  /// Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a batch.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. PySpark batch config.
  final Input<PySparkBatch>? pysparkBatch;

  /// Optional. A unique ID used to identify the request. If the service receives two CreateBatchRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s with the same request_id, the second request is ignored and the Operation that corresponds to the first Batch created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// Optional. Runtime configuration for the batch execution.
  final Input<RuntimeConfig2>? runtimeConfig;

  /// Optional. Spark batch config.
  final Input<SparkBatch>? sparkBatch;

  /// Optional. SparkR batch config.
  final Input<SparkRBatch>? sparkRBatch;

  /// Optional. SparkSql batch config.
  final Input<SparkSqlBatch>? sparkSqlBatch;

  BatchArgs({
    this.batchId,
    this.environmentConfig,
    this.labels,
    this.location,
    this.project,
    this.pysparkBatch,
    this.requestId,
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
      map['environmentConfig'] =
          Input.mapOptionalInputValue<EnvironmentConfig3, Map<String, dynamic>>(
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
          Input.mapOptionalInputValue<PySparkBatch, Map<String, dynamic>>(
              pysparkBatchValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final runtimeConfigValue = runtimeConfig;
    if (runtimeConfigValue != null) {
      map['runtimeConfig'] =
          Input.mapOptionalInputValue<RuntimeConfig2, Map<String, dynamic>>(
              runtimeConfigValue, (value) => value.toMap());
    }
    final sparkBatchValue = sparkBatch;
    if (sparkBatchValue != null) {
      map['sparkBatch'] =
          Input.mapOptionalInputValue<SparkBatch, Map<String, dynamic>>(
              sparkBatchValue, (value) => value.toMap());
    }
    final sparkRBatchValue = sparkRBatch;
    if (sparkRBatchValue != null) {
      map['sparkRBatch'] =
          Input.mapOptionalInputValue<SparkRBatch, Map<String, dynamic>>(
              sparkRBatchValue, (value) => value.toMap());
    }
    final sparkSqlBatchValue = sparkSqlBatch;
    if (sparkSqlBatchValue != null) {
      map['sparkSqlBatch'] =
          Input.mapOptionalInputValue<SparkSqlBatch, Map<String, dynamic>>(
              sparkSqlBatchValue, (value) => value.toMap());
    }
    return map;
  }

  factory BatchArgs.fromMap(Map<String, dynamic> map) {
    return BatchArgs(
      batchId: Input.asOptionalInput<String>(map['batchId']),
      environmentConfig:
          Input.asOptionalInput<EnvironmentConfig3>(map['environmentConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      pysparkBatch: Input.asOptionalInput<PySparkBatch>(map['pysparkBatch']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      runtimeConfig:
          Input.asOptionalInput<RuntimeConfig2>(map['runtimeConfig']),
      sparkBatch: Input.asOptionalInput<SparkBatch>(map['sparkBatch']),
      sparkRBatch: Input.asOptionalInput<SparkRBatch>(map['sparkRBatch']),
      sparkSqlBatch: Input.asOptionalInput<SparkSqlBatch>(map['sparkSqlBatch']),
    );
  }
}
