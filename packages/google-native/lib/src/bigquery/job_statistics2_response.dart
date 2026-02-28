// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bi_engine_statistics_response.dart';
import 'big_query_model_training_response.dart';
import 'dataset_reference_response.dart';
import 'dml_statistics_response.dart';
import 'explain_query_stage_response.dart';
import 'job_statistics2_reservation_usage_item_response.dart';
import 'ml_statistics_response.dart';
import 'query_parameter_response.dart';
import 'query_timeline_sample_response.dart';
import 'routine_reference_response.dart';
import 'row_access_policy_reference_response.dart';
import 'search_statistics_response.dart';
import 'spark_statistics_response.dart';
import 'table_reference_response.dart';
import 'table_schema_response.dart';

class JobStatistics2Response {
  /// BI Engine specific Statistics. [Output only] BI Engine specific Statistics.
  final BiEngineStatisticsResponse biEngineStatistics;

  /// [Output only] Billing tier for the job.
  final int billingTier;

  /// [Output only] Whether the query result was fetched from the query cache.
  final bool cacheHit;

  /// [Output only] [Preview] The number of row access policies affected by a DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries.
  final String ddlAffectedRowAccessPolicyCount;

  /// [Output only] The DDL destination table. Present only for ALTER TABLE RENAME TO queries. Note that ddl_target_table is used just for its type information.
  final TableReferenceResponse ddlDestinationTable;

  /// The DDL operation performed, possibly dependent on the pre-existence of the DDL target. Possible values (new values might be added in the future): "CREATE": The query created the DDL target. "SKIP": No-op. Example cases: the query is CREATE TABLE IF NOT EXISTS while the table already exists, or the query is DROP TABLE IF EXISTS while the table does not exist. "REPLACE": The query replaced the DDL target. Example case: the query is CREATE OR REPLACE TABLE, and the table already exists. "DROP": The query deleted the DDL target.
  final String ddlOperationPerformed;

  /// [Output only] The DDL target dataset. Present only for CREATE/ALTER/DROP/UNDROP SCHEMA queries.
  final DatasetReferenceResponse ddlTargetDataset;

  /// The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries.
  final RoutineReferenceResponse ddlTargetRoutine;

  /// [Output only] [Preview] The DDL target row access policy. Present only for CREATE/DROP ROW ACCESS POLICY queries.
  final RowAccessPolicyReferenceResponse ddlTargetRowAccessPolicy;

  /// [Output only] The DDL target table. Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES queries.
  final TableReferenceResponse ddlTargetTable;

  /// [Output only] Detailed statistics for DML statements Present only for DML statements INSERT, UPDATE, DELETE or TRUNCATE.
  final DmlStatisticsResponse dmlStats;

  /// [Output only] The original estimate of bytes processed for the job.
  final String estimatedBytesProcessed;

  /// [Output only] Statistics of a BigQuery ML training job.
  final MlStatisticsResponse mlStatistics;

  /// [Output only, Beta] Information about create model query job progress.
  final BigQueryModelTrainingResponse modelTraining;

  /// [Output only, Beta] Deprecated; do not use.
  final int modelTrainingCurrentIteration;

  /// [Output only, Beta] Deprecated; do not use.
  final String modelTrainingExpectedTotalIteration;

  /// [Output only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
  final String numDmlAffectedRows;

  /// [Output only] Describes execution plan for the query.
  final List<ExplainQueryStageResponse> queryPlan;

  /// [Output only] Referenced routines (persistent user-defined functions and stored procedures) for the job.
  final List<RoutineReferenceResponse> referencedRoutines;

  /// [Output only] Referenced tables for the job. Queries that reference more than 50 tables will not have a complete list.
  final List<TableReferenceResponse> referencedTables;

  /// [Output only] Job resource usage breakdown by reservation.
  final List<JobStatistics2ReservationUsageItemResponse> reservationUsage;

  /// [Output only] The schema of the results. Present only for successful dry run of non-legacy SQL queries.
  final TableSchemaResponse schema;

  /// [Output only] Search query specific statistics.
  final SearchStatisticsResponse searchStatistics;

  /// [Output only] Statistics of a Spark procedure job.
  final SparkStatisticsResponse sparkStatistics;

  /// The type of query statement, if valid. Possible values (new values might be added in the future): "SELECT": SELECT query. "INSERT": INSERT query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "UPDATE": UPDATE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "DELETE": DELETE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "MERGE": MERGE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "ALTER_TABLE": ALTER TABLE query. "ALTER_VIEW": ALTER VIEW query. "ASSERT": ASSERT condition AS 'description'. "CREATE_FUNCTION": CREATE FUNCTION query. "CREATE_MODEL": CREATE [OR REPLACE] MODEL ... AS SELECT ... . "CREATE_PROCEDURE": CREATE PROCEDURE query. "CREATE_TABLE": CREATE [OR REPLACE] TABLE without AS SELECT. "CREATE_TABLE_AS_SELECT": CREATE [OR REPLACE] TABLE ... AS SELECT ... . "CREATE_VIEW": CREATE [OR REPLACE] VIEW ... AS SELECT ... . "DROP_FUNCTION" : DROP FUNCTION query. "DROP_PROCEDURE": DROP PROCEDURE query. "DROP_TABLE": DROP TABLE query. "DROP_VIEW": DROP VIEW query.
  final String statementType;

  /// [Output only] [Beta] Describes a timeline of job execution.
  final List<QueryTimelineSampleResponse> timeline;

  /// [Output only] Total bytes billed for the job.
  final String totalBytesBilled;

  /// [Output only] Total bytes processed for the job.
  final String totalBytesProcessed;

  /// [Output only] For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what the query would cost. UPPER_BOUND: estimate is upper bound of what the query would cost.
  final String totalBytesProcessedAccuracy;

  /// [Output only] Total number of partitions processed from all partitioned tables referenced in the job.
  final String totalPartitionsProcessed;

  /// [Output only] Slot-milliseconds for the job.
  final String totalSlotMs;

  /// Total bytes transferred for cross-cloud queries such as Cross Cloud Transfer and CREATE TABLE AS SELECT (CTAS).
  final String transferredBytes;

  /// Standard SQL only: list of undeclared query parameters detected during a dry run validation.
  final List<QueryParameterResponse> undeclaredQueryParameters;

  /// Creates a new [JobStatistics2Response].
  /// [biEngineStatistics] BI Engine specific Statistics. [Output only] BI Engine specific Statistics.
  /// [billingTier] [Output only] Billing tier for the job.
  /// [cacheHit] [Output only] Whether the query result was fetched from the query cache.
  /// [ddlAffectedRowAccessPolicyCount] [Output only] [Preview] The number of row access policies affected by a DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries.
  /// [ddlDestinationTable] [Output only] The DDL destination table. Present only for ALTER TABLE RENAME TO queries. Note that ddl_target_table is used just for its type information.
  /// [ddlOperationPerformed] The DDL operation performed, possibly dependent on the pre-existence of the DDL target. Possible values (new values might be added in the future): "CREATE": The query created the DDL target. "SKIP": No-op. Example cases: the query is CREATE TABLE IF NOT EXISTS while the table already exists, or the query is DROP TABLE IF EXISTS while the table does not exist. "REPLACE": The query replaced the DDL target. Example case: the query is CREATE OR REPLACE TABLE, and the table already exists. "DROP": The query deleted the DDL target.
  /// [ddlTargetDataset] [Output only] The DDL target dataset. Present only for CREATE/ALTER/DROP/UNDROP SCHEMA queries.
  /// [ddlTargetRoutine] The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries.
  /// [ddlTargetRowAccessPolicy] [Output only] [Preview] The DDL target row access policy. Present only for CREATE/DROP ROW ACCESS POLICY queries.
  /// [ddlTargetTable] [Output only] The DDL target table. Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES queries.
  /// [dmlStats] [Output only] Detailed statistics for DML statements Present only for DML statements INSERT, UPDATE, DELETE or TRUNCATE.
  /// [estimatedBytesProcessed] [Output only] The original estimate of bytes processed for the job.
  /// [mlStatistics] [Output only] Statistics of a BigQuery ML training job.
  /// [modelTraining] [Output only, Beta] Information about create model query job progress.
  /// [modelTrainingCurrentIteration] [Output only, Beta] Deprecated; do not use.
  /// [modelTrainingExpectedTotalIteration] [Output only, Beta] Deprecated; do not use.
  /// [numDmlAffectedRows] [Output only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
  /// [queryPlan] [Output only] Describes execution plan for the query.
  /// [referencedRoutines] [Output only] Referenced routines (persistent user-defined functions and stored procedures) for the job.
  /// [referencedTables] [Output only] Referenced tables for the job. Queries that reference more than 50 tables will not have a complete list.
  /// [reservationUsage] [Output only] Job resource usage breakdown by reservation.
  /// [schema] [Output only] The schema of the results. Present only for successful dry run of non-legacy SQL queries.
  /// [searchStatistics] [Output only] Search query specific statistics.
  /// [sparkStatistics] [Output only] Statistics of a Spark procedure job.
  /// [statementType] The type of query statement, if valid. Possible values (new values might be added in the future): "SELECT": SELECT query. "INSERT": INSERT query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "UPDATE": UPDATE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "DELETE": DELETE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "MERGE": MERGE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "ALTER_TABLE": ALTER TABLE query. "ALTER_VIEW": ALTER VIEW query. "ASSERT": ASSERT condition AS 'description'. "CREATE_FUNCTION": CREATE FUNCTION query. "CREATE_MODEL": CREATE [OR REPLACE] MODEL ... AS SELECT ... . "CREATE_PROCEDURE": CREATE PROCEDURE query. "CREATE_TABLE": CREATE [OR REPLACE] TABLE without AS SELECT. "CREATE_TABLE_AS_SELECT": CREATE [OR REPLACE] TABLE ... AS SELECT ... . "CREATE_VIEW": CREATE [OR REPLACE] VIEW ... AS SELECT ... . "DROP_FUNCTION" : DROP FUNCTION query. "DROP_PROCEDURE": DROP PROCEDURE query. "DROP_TABLE": DROP TABLE query. "DROP_VIEW": DROP VIEW query.
  /// [timeline] [Output only] [Beta] Describes a timeline of job execution.
  /// [totalBytesBilled] [Output only] Total bytes billed for the job.
  /// [totalBytesProcessed] [Output only] Total bytes processed for the job.
  /// [totalBytesProcessedAccuracy] [Output only] For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what the query would cost. UPPER_BOUND: estimate is upper bound of what the query would cost.
  /// [totalPartitionsProcessed] [Output only] Total number of partitions processed from all partitioned tables referenced in the job.
  /// [totalSlotMs] [Output only] Slot-milliseconds for the job.
  /// [transferredBytes] Total bytes transferred for cross-cloud queries such as Cross Cloud Transfer and CREATE TABLE AS SELECT (CTAS).
  /// [undeclaredQueryParameters] Standard SQL only: list of undeclared query parameters detected during a dry run validation.
  JobStatistics2Response({
    required this.biEngineStatistics,
    required this.billingTier,
    required this.cacheHit,
    required this.ddlAffectedRowAccessPolicyCount,
    required this.ddlDestinationTable,
    required this.ddlOperationPerformed,
    required this.ddlTargetDataset,
    required this.ddlTargetRoutine,
    required this.ddlTargetRowAccessPolicy,
    required this.ddlTargetTable,
    required this.dmlStats,
    required this.estimatedBytesProcessed,
    required this.mlStatistics,
    required this.modelTraining,
    required this.modelTrainingCurrentIteration,
    required this.modelTrainingExpectedTotalIteration,
    required this.numDmlAffectedRows,
    required this.queryPlan,
    required this.referencedRoutines,
    required this.referencedTables,
    required this.reservationUsage,
    required this.schema,
    required this.searchStatistics,
    required this.sparkStatistics,
    required this.statementType,
    required this.timeline,
    required this.totalBytesBilled,
    required this.totalBytesProcessed,
    required this.totalBytesProcessedAccuracy,
    required this.totalPartitionsProcessed,
    required this.totalSlotMs,
    required this.transferredBytes,
    required this.undeclaredQueryParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['biEngineStatistics'] = biEngineStatistics.toMap();
    map['billingTier'] = billingTier;
    map['cacheHit'] = cacheHit;
    map['ddlAffectedRowAccessPolicyCount'] = ddlAffectedRowAccessPolicyCount;
    map['ddlDestinationTable'] = ddlDestinationTable.toMap();
    map['ddlOperationPerformed'] = ddlOperationPerformed;
    map['ddlTargetDataset'] = ddlTargetDataset.toMap();
    map['ddlTargetRoutine'] = ddlTargetRoutine.toMap();
    map['ddlTargetRowAccessPolicy'] = ddlTargetRowAccessPolicy.toMap();
    map['ddlTargetTable'] = ddlTargetTable.toMap();
    map['dmlStats'] = dmlStats.toMap();
    map['estimatedBytesProcessed'] = estimatedBytesProcessed;
    map['mlStatistics'] = mlStatistics.toMap();
    map['modelTraining'] = modelTraining.toMap();
    map['modelTrainingCurrentIteration'] = modelTrainingCurrentIteration;
    map['modelTrainingExpectedTotalIteration'] =
        modelTrainingExpectedTotalIteration;
    map['numDmlAffectedRows'] = numDmlAffectedRows;
    map['queryPlan'] = pulumi.Input.encodeList<ExplainQueryStageResponse,
        Map<String, dynamic>>(queryPlan, (value) => value.toMap());
    map['referencedRoutines'] =
        pulumi.Input.encodeList<RoutineReferenceResponse, Map<String, dynamic>>(
            referencedRoutines, (value) => value.toMap());
    map['referencedTables'] =
        pulumi.Input.encodeList<TableReferenceResponse, Map<String, dynamic>>(
            referencedTables, (value) => value.toMap());
    map['reservationUsage'] = pulumi.Input.encodeList<
        JobStatistics2ReservationUsageItemResponse,
        Map<String, dynamic>>(reservationUsage, (value) => value.toMap());
    map['schema'] = schema.toMap();
    map['searchStatistics'] = searchStatistics.toMap();
    map['sparkStatistics'] = sparkStatistics.toMap();
    map['statementType'] = statementType;
    map['timeline'] = pulumi.Input.encodeList<QueryTimelineSampleResponse,
        Map<String, dynamic>>(timeline, (value) => value.toMap());
    map['totalBytesBilled'] = totalBytesBilled;
    map['totalBytesProcessed'] = totalBytesProcessed;
    map['totalBytesProcessedAccuracy'] = totalBytesProcessedAccuracy;
    map['totalPartitionsProcessed'] = totalPartitionsProcessed;
    map['totalSlotMs'] = totalSlotMs;
    map['transferredBytes'] = transferredBytes;
    map['undeclaredQueryParameters'] =
        pulumi.Input.encodeList<QueryParameterResponse, Map<String, dynamic>>(
            undeclaredQueryParameters, (value) => value.toMap());
    return map;
  }

  factory JobStatistics2Response.fromMap(Map<String, dynamic> map) {
    return JobStatistics2Response(
      biEngineStatistics: BiEngineStatisticsResponse.fromMap(
          (map['biEngineStatistics'] as Map).cast<String, dynamic>()),
      billingTier: map['billingTier'] as int,
      cacheHit: map['cacheHit'] as bool,
      ddlAffectedRowAccessPolicyCount:
          map['ddlAffectedRowAccessPolicyCount'] as String,
      ddlDestinationTable: TableReferenceResponse.fromMap(
          (map['ddlDestinationTable'] as Map).cast<String, dynamic>()),
      ddlOperationPerformed: map['ddlOperationPerformed'] as String,
      ddlTargetDataset: DatasetReferenceResponse.fromMap(
          (map['ddlTargetDataset'] as Map).cast<String, dynamic>()),
      ddlTargetRoutine: RoutineReferenceResponse.fromMap(
          (map['ddlTargetRoutine'] as Map).cast<String, dynamic>()),
      ddlTargetRowAccessPolicy: RowAccessPolicyReferenceResponse.fromMap(
          (map['ddlTargetRowAccessPolicy'] as Map).cast<String, dynamic>()),
      ddlTargetTable: TableReferenceResponse.fromMap(
          (map['ddlTargetTable'] as Map).cast<String, dynamic>()),
      dmlStats: DmlStatisticsResponse.fromMap(
          (map['dmlStats'] as Map).cast<String, dynamic>()),
      estimatedBytesProcessed: map['estimatedBytesProcessed'] as String,
      mlStatistics: MlStatisticsResponse.fromMap(
          (map['mlStatistics'] as Map).cast<String, dynamic>()),
      modelTraining: BigQueryModelTrainingResponse.fromMap(
          (map['modelTraining'] as Map).cast<String, dynamic>()),
      modelTrainingCurrentIteration:
          map['modelTrainingCurrentIteration'] as int,
      modelTrainingExpectedTotalIteration:
          map['modelTrainingExpectedTotalIteration'] as String,
      numDmlAffectedRows: map['numDmlAffectedRows'] as String,
      queryPlan: pulumi.Input.decodeList<ExplainQueryStageResponse>(
          map['queryPlan'],
          (value) => ExplainQueryStageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      referencedRoutines: pulumi.Input.decodeList<RoutineReferenceResponse>(
          map['referencedRoutines'],
          (value) => RoutineReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      referencedTables: pulumi.Input.decodeList<TableReferenceResponse>(
          map['referencedTables'],
          (value) => TableReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      reservationUsage:
          pulumi.Input.decodeList<JobStatistics2ReservationUsageItemResponse>(
              map['reservationUsage'],
              (value) => JobStatistics2ReservationUsageItemResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      schema: TableSchemaResponse.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
      searchStatistics: SearchStatisticsResponse.fromMap(
          (map['searchStatistics'] as Map).cast<String, dynamic>()),
      sparkStatistics: SparkStatisticsResponse.fromMap(
          (map['sparkStatistics'] as Map).cast<String, dynamic>()),
      statementType: map['statementType'] as String,
      timeline: pulumi.Input.decodeList<QueryTimelineSampleResponse>(
          map['timeline'],
          (value) => QueryTimelineSampleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      totalBytesBilled: map['totalBytesBilled'] as String,
      totalBytesProcessed: map['totalBytesProcessed'] as String,
      totalBytesProcessedAccuracy: map['totalBytesProcessedAccuracy'] as String,
      totalPartitionsProcessed: map['totalPartitionsProcessed'] as String,
      totalSlotMs: map['totalSlotMs'] as String,
      transferredBytes: map['transferredBytes'] as String,
      undeclaredQueryParameters:
          pulumi.Input.decodeList<QueryParameterResponse>(
              map['undeclaredQueryParameters'],
              (value) => QueryParameterResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
