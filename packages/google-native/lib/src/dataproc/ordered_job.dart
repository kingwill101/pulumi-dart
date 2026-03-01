// ignore_for_file: unused_element, unnecessary_cast

import 'flink_job.dart';
import 'hadoop_job.dart';
import 'hive_job.dart';
import 'job_scheduling.dart';
import 'pig_job.dart';
import 'presto_job.dart';
import 'py_spark_job.dart';
import 'spark_job.dart';
import 'spark_rjob.dart';
import 'spark_sql_job.dart';
import 'trino_job.dart';

/// A job executed by the workflow.
class OrderedJob {
  /// Optional. Job is a Flink job.
  final FlinkJob? flinkJob;

  /// Optional. Job is a Hadoop job.
  final HadoopJob? hadoopJob;

  /// Optional. Job is a Hive job.
  final HiveJob? hiveJob;

  /// Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  final Map<String, String>? labels;

  /// Optional. Job is a Pig job.
  final PigJob? pigJob;

  /// Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final List<String>? prerequisiteStepIds;

  /// Optional. Job is a Presto job.
  final PrestoJob? prestoJob;

  /// Optional. Job is a PySpark job.
  final PySparkJob? pysparkJob;

  /// Optional. Job scheduling configuration.
  final JobScheduling? scheduling;

  /// Optional. Job is a Spark job.
  final SparkJob? sparkJob;

  /// Optional. Job is a SparkR job.
  final SparkRJob? sparkRJob;

  /// Optional. Job is a SparkSql job.
  final SparkSqlJob? sparkSqlJob;

  /// The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final String stepId;

  /// Optional. Job is a Trino job.
  final TrinoJob? trinoJob;

  /// Creates a new [OrderedJob].
  /// [flinkJob] Optional. Job is a Flink job.
  /// [hadoopJob] Optional. Job is a Hadoop job.
  /// [hiveJob] Optional. Job is a Hive job.
  /// [labels] Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  /// [pigJob] Optional. Job is a Pig job.
  /// [prerequisiteStepIds] Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  /// [prestoJob] Optional. Job is a Presto job.
  /// [pysparkJob] Optional. Job is a PySpark job.
  /// [scheduling] Optional. Job scheduling configuration.
  /// [sparkJob] Optional. Job is a Spark job.
  /// [sparkRJob] Optional. Job is a SparkR job.
  /// [sparkSqlJob] Optional. Job is a SparkSql job.
  /// [stepId] The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  /// [trinoJob] Optional. Job is a Trino job.
  OrderedJob({
    this.flinkJob,
    this.hadoopJob,
    this.hiveJob,
    this.labels,
    this.pigJob,
    this.prerequisiteStepIds,
    this.prestoJob,
    this.pysparkJob,
    this.scheduling,
    this.sparkJob,
    this.sparkRJob,
    this.sparkSqlJob,
    required this.stepId,
    this.trinoJob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flinkJob': ?flinkJob == null ? null : flinkJob!.toMap(),
      'hadoopJob': ?hadoopJob == null ? null : hadoopJob!.toMap(),
      'hiveJob': ?hiveJob == null ? null : hiveJob!.toMap(),
      'labels': ?labels,
      'pigJob': ?pigJob == null ? null : pigJob!.toMap(),
      'prerequisiteStepIds': ?prerequisiteStepIds,
      'prestoJob': ?prestoJob == null ? null : prestoJob!.toMap(),
      'pysparkJob': ?pysparkJob == null ? null : pysparkJob!.toMap(),
      'scheduling': ?scheduling == null ? null : scheduling!.toMap(),
      'sparkJob': ?sparkJob == null ? null : sparkJob!.toMap(),
      'sparkRJob': ?sparkRJob == null ? null : sparkRJob!.toMap(),
      'sparkSqlJob': ?sparkSqlJob == null ? null : sparkSqlJob!.toMap(),
      'stepId': stepId,
      'trinoJob': ?trinoJob == null ? null : trinoJob!.toMap(),
    };
  }

  factory OrderedJob.fromMap(Map<String, dynamic> map) {
    return OrderedJob(
      flinkJob: map['flinkJob'] == null
          ? null
          : FlinkJob.fromMap((map['flinkJob'] as Map).cast<String, dynamic>()),
      hadoopJob: map['hadoopJob'] == null
          ? null
          : HadoopJob.fromMap(
              (map['hadoopJob'] as Map).cast<String, dynamic>(),
            ),
      hiveJob: map['hiveJob'] == null
          ? null
          : HiveJob.fromMap((map['hiveJob'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      pigJob: map['pigJob'] == null
          ? null
          : PigJob.fromMap((map['pigJob'] as Map).cast<String, dynamic>()),
      prerequisiteStepIds: map['prerequisiteStepIds'] == null
          ? null
          : (map['prerequisiteStepIds'] as List).cast<String>(),
      prestoJob: map['prestoJob'] == null
          ? null
          : PrestoJob.fromMap(
              (map['prestoJob'] as Map).cast<String, dynamic>(),
            ),
      pysparkJob: map['pysparkJob'] == null
          ? null
          : PySparkJob.fromMap(
              (map['pysparkJob'] as Map).cast<String, dynamic>(),
            ),
      scheduling: map['scheduling'] == null
          ? null
          : JobScheduling.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>(),
            ),
      sparkJob: map['sparkJob'] == null
          ? null
          : SparkJob.fromMap((map['sparkJob'] as Map).cast<String, dynamic>()),
      sparkRJob: map['sparkRJob'] == null
          ? null
          : SparkRJob.fromMap(
              (map['sparkRJob'] as Map).cast<String, dynamic>(),
            ),
      sparkSqlJob: map['sparkSqlJob'] == null
          ? null
          : SparkSqlJob.fromMap(
              (map['sparkSqlJob'] as Map).cast<String, dynamic>(),
            ),
      stepId: map['stepId'] as String,
      trinoJob: map['trinoJob'] == null
          ? null
          : TrinoJob.fromMap((map['trinoJob'] as Map).cast<String, dynamic>()),
    );
  }
}
