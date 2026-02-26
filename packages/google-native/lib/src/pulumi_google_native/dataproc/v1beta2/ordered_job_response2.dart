// ignore_for_file: unused_element, unnecessary_cast

import 'hadoop_job_response2.dart';
import 'hive_job_response2.dart';
import 'job_scheduling_response2.dart';
import 'pig_job_response2.dart';
import 'presto_job_response2.dart';
import 'py_spark_job_response2.dart';
import 'spark_job_response2.dart';
import 'spark_rjob_response2.dart';
import 'spark_sql_job_response2.dart';

/// A job executed by the workflow.
class OrderedJobResponse2 {
  /// Optional. Job is a Hadoop job.
  final HadoopJobResponse2 hadoopJob;

  /// Optional. Job is a Hive job.
  final HiveJobResponse2 hiveJob;

  /// Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \p{Ll}\p{Lo}\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  final Map<String, String> labels;

  /// Optional. Job is a Pig job.
  final PigJobResponse2 pigJob;

  /// Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final List<String> prerequisiteStepIds;

  /// Optional. Job is a Presto job.
  final PrestoJobResponse2 prestoJob;

  /// Optional. Job is a PySpark job.
  final PySparkJobResponse2 pysparkJob;

  /// Optional. Job scheduling configuration.
  final JobSchedulingResponse2 scheduling;

  /// Optional. Job is a Spark job.
  final SparkJobResponse2 sparkJob;

  /// Optional. Job is a SparkR job.
  final SparkRJobResponse2 sparkRJob;

  /// Optional. Job is a SparkSql job.
  final SparkSqlJobResponse2 sparkSqlJob;

  /// The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final String stepId;

  OrderedJobResponse2({
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
    final map = <String, dynamic>{};
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
    return map;
  }

  factory OrderedJobResponse2.fromMap(Map<String, dynamic> map) {
    return OrderedJobResponse2(
      hadoopJob: HadoopJobResponse2.fromMap(
          (map['hadoopJob'] as Map).cast<String, dynamic>()),
      hiveJob: HiveJobResponse2.fromMap(
          (map['hiveJob'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      pigJob: PigJobResponse2.fromMap(
          (map['pigJob'] as Map).cast<String, dynamic>()),
      prerequisiteStepIds: (map['prerequisiteStepIds'] as List).cast<String>(),
      prestoJob: PrestoJobResponse2.fromMap(
          (map['prestoJob'] as Map).cast<String, dynamic>()),
      pysparkJob: PySparkJobResponse2.fromMap(
          (map['pysparkJob'] as Map).cast<String, dynamic>()),
      scheduling: JobSchedulingResponse2.fromMap(
          (map['scheduling'] as Map).cast<String, dynamic>()),
      sparkJob: SparkJobResponse2.fromMap(
          (map['sparkJob'] as Map).cast<String, dynamic>()),
      sparkRJob: SparkRJobResponse2.fromMap(
          (map['sparkRJob'] as Map).cast<String, dynamic>()),
      sparkSqlJob: SparkSqlJobResponse2.fromMap(
          (map['sparkSqlJob'] as Map).cast<String, dynamic>()),
      stepId: map['stepId'] as String,
    );
  }
}
