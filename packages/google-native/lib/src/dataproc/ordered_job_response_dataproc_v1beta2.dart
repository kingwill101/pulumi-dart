// ignore_for_file: unused_element, unnecessary_cast

import 'hadoop_job_response_dataproc_v1beta2.dart';
import 'hive_job_response_dataproc_v1beta2.dart';
import 'job_scheduling_response_dataproc_v1beta2.dart';
import 'pig_job_response_dataproc_v1beta2.dart';
import 'presto_job_response_dataproc_v1beta2.dart';
import 'py_spark_job_response_dataproc_v1beta2.dart';
import 'spark_job_response_dataproc_v1beta2.dart';
import 'spark_rjob_response_dataproc_v1beta2.dart';
import 'spark_sql_job_response_dataproc_v1beta2.dart';

/// A job executed by the workflow.
class OrderedJobResponseDataprocV1beta2 {
  /// Optional. Job is a Hadoop job.
  final HadoopJobResponseDataprocV1beta2 hadoopJob;

  /// Optional. Job is a Hive job.
  final HiveJobResponseDataprocV1beta2 hiveJob;

  /// Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  final Map<String, String> labels;

  /// Optional. Job is a Pig job.
  final PigJobResponseDataprocV1beta2 pigJob;

  /// Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final List<String> prerequisiteStepIds;

  /// Optional. Job is a Presto job.
  final PrestoJobResponseDataprocV1beta2 prestoJob;

  /// Optional. Job is a PySpark job.
  final PySparkJobResponseDataprocV1beta2 pysparkJob;

  /// Optional. Job scheduling configuration.
  final JobSchedulingResponseDataprocV1beta2 scheduling;

  /// Optional. Job is a Spark job.
  final SparkJobResponseDataprocV1beta2 sparkJob;

  /// Optional. Job is a SparkR job.
  final SparkRJobResponseDataprocV1beta2 sparkRJob;

  /// Optional. Job is a SparkSql job.
  final SparkSqlJobResponseDataprocV1beta2 sparkSqlJob;

  /// The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final String stepId;

  /// Creates a new [OrderedJobResponseDataprocV1beta2].
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
  OrderedJobResponseDataprocV1beta2({
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadoopJob': hadoopJob.toMap(),
      'hiveJob': hiveJob.toMap(),
      'labels': labels,
      'pigJob': pigJob.toMap(),
      'prerequisiteStepIds': prerequisiteStepIds,
      'prestoJob': prestoJob.toMap(),
      'pysparkJob': pysparkJob.toMap(),
      'scheduling': scheduling.toMap(),
      'sparkJob': sparkJob.toMap(),
      'sparkRJob': sparkRJob.toMap(),
      'sparkSqlJob': sparkSqlJob.toMap(),
      'stepId': stepId,
    };
  }

  factory OrderedJobResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return OrderedJobResponseDataprocV1beta2(
      hadoopJob: HadoopJobResponseDataprocV1beta2.fromMap(
        (map['hadoopJob'] as Map).cast<String, dynamic>(),
      ),
      hiveJob: HiveJobResponseDataprocV1beta2.fromMap(
        (map['hiveJob'] as Map).cast<String, dynamic>(),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
      pigJob: PigJobResponseDataprocV1beta2.fromMap(
        (map['pigJob'] as Map).cast<String, dynamic>(),
      ),
      prerequisiteStepIds: (map['prerequisiteStepIds'] as List).cast<String>(),
      prestoJob: PrestoJobResponseDataprocV1beta2.fromMap(
        (map['prestoJob'] as Map).cast<String, dynamic>(),
      ),
      pysparkJob: PySparkJobResponseDataprocV1beta2.fromMap(
        (map['pysparkJob'] as Map).cast<String, dynamic>(),
      ),
      scheduling: JobSchedulingResponseDataprocV1beta2.fromMap(
        (map['scheduling'] as Map).cast<String, dynamic>(),
      ),
      sparkJob: SparkJobResponseDataprocV1beta2.fromMap(
        (map['sparkJob'] as Map).cast<String, dynamic>(),
      ),
      sparkRJob: SparkRJobResponseDataprocV1beta2.fromMap(
        (map['sparkRJob'] as Map).cast<String, dynamic>(),
      ),
      sparkSqlJob: SparkSqlJobResponseDataprocV1beta2.fromMap(
        (map['sparkSqlJob'] as Map).cast<String, dynamic>(),
      ),
      stepId: map['stepId'] as String,
    );
  }
}
