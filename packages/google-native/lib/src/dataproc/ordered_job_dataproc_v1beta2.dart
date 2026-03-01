// ignore_for_file: unused_element, unnecessary_cast

import 'hadoop_job_dataproc_v1beta2.dart';
import 'hive_job_dataproc_v1beta2.dart';
import 'job_scheduling_dataproc_v1beta2.dart';
import 'pig_job_dataproc_v1beta2.dart';
import 'presto_job_dataproc_v1beta2.dart';
import 'py_spark_job_dataproc_v1beta2.dart';
import 'spark_job_dataproc_v1beta2.dart';
import 'spark_rjob_dataproc_v1beta2.dart';
import 'spark_sql_job_dataproc_v1beta2.dart';

/// A job executed by the workflow.
class OrderedJobDataprocV1beta2 {
  /// Optional. Job is a Hadoop job.
  final HadoopJobDataprocV1beta2? hadoopJob;

  /// Optional. Job is a Hive job.
  final HiveJobDataprocV1beta2? hiveJob;

  /// Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  final Map<String, String>? labels;

  /// Optional. Job is a Pig job.
  final PigJobDataprocV1beta2? pigJob;

  /// Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final List<String>? prerequisiteStepIds;

  /// Optional. Job is a Presto job.
  final PrestoJobDataprocV1beta2? prestoJob;

  /// Optional. Job is a PySpark job.
  final PySparkJobDataprocV1beta2? pysparkJob;

  /// Optional. Job scheduling configuration.
  final JobSchedulingDataprocV1beta2? scheduling;

  /// Optional. Job is a Spark job.
  final SparkJobDataprocV1beta2? sparkJob;

  /// Optional. Job is a SparkR job.
  final SparkRJobDataprocV1beta2? sparkRJob;

  /// Optional. Job is a SparkSql job.
  final SparkSqlJobDataprocV1beta2? sparkSqlJob;

  /// The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final String stepId;

  /// Creates a new [OrderedJobDataprocV1beta2].
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
  OrderedJobDataprocV1beta2({
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
    };
  }

  factory OrderedJobDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return OrderedJobDataprocV1beta2(
      hadoopJob: map['hadoopJob'] == null
          ? null
          : HadoopJobDataprocV1beta2.fromMap(
              (map['hadoopJob'] as Map).cast<String, dynamic>(),
            ),
      hiveJob: map['hiveJob'] == null
          ? null
          : HiveJobDataprocV1beta2.fromMap(
              (map['hiveJob'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      pigJob: map['pigJob'] == null
          ? null
          : PigJobDataprocV1beta2.fromMap(
              (map['pigJob'] as Map).cast<String, dynamic>(),
            ),
      prerequisiteStepIds: map['prerequisiteStepIds'] == null
          ? null
          : (map['prerequisiteStepIds'] as List).cast<String>(),
      prestoJob: map['prestoJob'] == null
          ? null
          : PrestoJobDataprocV1beta2.fromMap(
              (map['prestoJob'] as Map).cast<String, dynamic>(),
            ),
      pysparkJob: map['pysparkJob'] == null
          ? null
          : PySparkJobDataprocV1beta2.fromMap(
              (map['pysparkJob'] as Map).cast<String, dynamic>(),
            ),
      scheduling: map['scheduling'] == null
          ? null
          : JobSchedulingDataprocV1beta2.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>(),
            ),
      sparkJob: map['sparkJob'] == null
          ? null
          : SparkJobDataprocV1beta2.fromMap(
              (map['sparkJob'] as Map).cast<String, dynamic>(),
            ),
      sparkRJob: map['sparkRJob'] == null
          ? null
          : SparkRJobDataprocV1beta2.fromMap(
              (map['sparkRJob'] as Map).cast<String, dynamic>(),
            ),
      sparkSqlJob: map['sparkSqlJob'] == null
          ? null
          : SparkSqlJobDataprocV1beta2.fromMap(
              (map['sparkSqlJob'] as Map).cast<String, dynamic>(),
            ),
      stepId: map['stepId'] as String,
    );
  }
}
