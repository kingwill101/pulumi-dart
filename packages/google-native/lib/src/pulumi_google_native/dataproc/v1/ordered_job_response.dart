// ignore_for_file: unused_element, unnecessary_cast

import 'flink_job_response.dart';
import 'hadoop_job_response.dart';
import 'hive_job_response.dart';
import 'job_scheduling_response.dart';
import 'pig_job_response.dart';
import 'presto_job_response.dart';
import 'py_spark_job_response.dart';
import 'spark_job_response.dart';
import 'spark_rjob_response.dart';
import 'spark_sql_job_response.dart';
import 'trino_job_response.dart';

/// A job executed by the workflow.
class OrderedJobResponse {
  /// Optional. Job is a Flink job.
  final FlinkJobResponse flinkJob;

  /// Optional. Job is a Hadoop job.
  final HadoopJobResponse hadoopJob;

  /// Optional. Job is a Hive job.
  final HiveJobResponse hiveJob;

  /// Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  final Map<String, String> labels;

  /// Optional. Job is a Pig job.
  final PigJobResponse pigJob;

  /// Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final List<String> prerequisiteStepIds;

  /// Optional. Job is a Presto job.
  final PrestoJobResponse prestoJob;

  /// Optional. Job is a PySpark job.
  final PySparkJobResponse pysparkJob;

  /// Optional. Job scheduling configuration.
  final JobSchedulingResponse scheduling;

  /// Optional. Job is a Spark job.
  final SparkJobResponse sparkJob;

  /// Optional. Job is a SparkR job.
  final SparkRJobResponse sparkRJob;

  /// Optional. Job is a SparkSql job.
  final SparkSqlJobResponse sparkSqlJob;

  /// The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final String stepId;

  /// Optional. Job is a Trino job.
  final TrinoJobResponse trinoJob;

  OrderedJobResponse({
    required this.flinkJob,
    required this.hadoopJob,
    required this.hiveJob,
    required this.labels,
    required this.pigJob,
    required this.prerequisiteStepIds,
    required this.prestoJob,
    required this.pysparkJob,
    required this.scheduling,
    required this.sparkJob,
    required this.sparkRJob,
    required this.sparkSqlJob,
    required this.stepId,
    required this.trinoJob,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['flinkJob'] = flinkJob.toMap();
    map['hadoopJob'] = hadoopJob.toMap();
    map['hiveJob'] = hiveJob.toMap();
    map['labels'] = labels;
    map['pigJob'] = pigJob.toMap();
    map['prerequisiteStepIds'] = prerequisiteStepIds;
    map['prestoJob'] = prestoJob.toMap();
    map['pysparkJob'] = pysparkJob.toMap();
    map['scheduling'] = scheduling.toMap();
    map['sparkJob'] = sparkJob.toMap();
    map['sparkRJob'] = sparkRJob.toMap();
    map['sparkSqlJob'] = sparkSqlJob.toMap();
    map['stepId'] = stepId;
    map['trinoJob'] = trinoJob.toMap();
    return map;
  }

  factory OrderedJobResponse.fromMap(Map<String, dynamic> map) {
    return OrderedJobResponse(
      flinkJob: FlinkJobResponse.fromMap(
          (map['flinkJob'] as Map).cast<String, dynamic>()),
      hadoopJob: HadoopJobResponse.fromMap(
          (map['hadoopJob'] as Map).cast<String, dynamic>()),
      hiveJob: HiveJobResponse.fromMap(
          (map['hiveJob'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      pigJob: PigJobResponse.fromMap(
          (map['pigJob'] as Map).cast<String, dynamic>()),
      prerequisiteStepIds: (map['prerequisiteStepIds'] as List).cast<String>(),
      prestoJob: PrestoJobResponse.fromMap(
          (map['prestoJob'] as Map).cast<String, dynamic>()),
      pysparkJob: PySparkJobResponse.fromMap(
          (map['pysparkJob'] as Map).cast<String, dynamic>()),
      scheduling: JobSchedulingResponse.fromMap(
          (map['scheduling'] as Map).cast<String, dynamic>()),
      sparkJob: SparkJobResponse.fromMap(
          (map['sparkJob'] as Map).cast<String, dynamic>()),
      sparkRJob: SparkRJobResponse.fromMap(
          (map['sparkRJob'] as Map).cast<String, dynamic>()),
      sparkSqlJob: SparkSqlJobResponse.fromMap(
          (map['sparkSqlJob'] as Map).cast<String, dynamic>()),
      stepId: map['stepId'] as String,
      trinoJob: TrinoJobResponse.fromMap(
          (map['trinoJob'] as Map).cast<String, dynamic>()),
    );
  }
}
