// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_template_job_hadoop_job.dart';
import 'workflow_template_job_hive_job.dart';
import 'workflow_template_job_pig_job.dart';
import 'workflow_template_job_presto_job.dart';
import 'workflow_template_job_pyspark_job.dart';
import 'workflow_template_job_scheduling.dart';
import 'workflow_template_job_spark_job.dart';
import 'workflow_template_job_spark_rjob.dart';
import 'workflow_template_job_spark_sql_job.dart';

class WorkflowTemplateJob {
  /// Job is a Hadoop job.
  final WorkflowTemplateJobHadoopJob? hadoopJob;

  /// Job is a Hive job.
  final WorkflowTemplateJobHiveJob? hiveJob;

  /// The labels to associate with this job. Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: {0,63} No more than 32 labels can be associated with a given job.
  final Map<String, String>? labels;

  /// Job is a Pig job.
  final WorkflowTemplateJobPigJob? pigJob;

  /// The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  final List<String>? prerequisiteStepIds;

  /// Job is a Presto job.
  final WorkflowTemplateJobPrestoJob? prestoJob;

  /// Job is a PySpark job.
  final WorkflowTemplateJobPysparkJob? pysparkJob;

  /// Job scheduling configuration.
  final WorkflowTemplateJobScheduling? scheduling;

  /// Job is a Spark job.
  final WorkflowTemplateJobSparkJob? sparkJob;

  /// Job is a SparkR job.
  final WorkflowTemplateJobSparkRJob? sparkRJob;

  /// Job is a SparkSql job.
  final WorkflowTemplateJobSparkSqlJob? sparkSqlJob;

  /// Required. The step id. The id must be unique among all jobs within the template. The step id is used as prefix for job id, as job `goog-dataproc-workflow-step-id` label, and in field from other steps. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final String stepId;

  /// Creates a new [WorkflowTemplateJob].
  /// [hadoopJob] Job is a Hadoop job.
  /// [hiveJob] Job is a Hive job.
  /// [labels] The labels to associate with this job. Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: {0,63} No more than 32 labels can be associated with a given job.
  /// [pigJob] Job is a Pig job.
  /// [prerequisiteStepIds] The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  /// [prestoJob] Job is a Presto job.
  /// [pysparkJob] Job is a PySpark job.
  /// [scheduling] Job scheduling configuration.
  /// [sparkJob] Job is a Spark job.
  /// [sparkRJob] Job is a SparkR job.
  /// [sparkSqlJob] Job is a SparkSql job.
  /// [stepId] Required. The step id. The id must be unique among all jobs within the template. The step id is used as prefix for job id, as job `goog-dataproc-workflow-step-id` label, and in field from other steps. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  WorkflowTemplateJob({
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

  factory WorkflowTemplateJob.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJob(
      hadoopJob: map['hadoopJob'] == null
          ? null
          : WorkflowTemplateJobHadoopJob.fromMap(
              (map['hadoopJob'] as Map).cast<String, dynamic>(),
            ),
      hiveJob: map['hiveJob'] == null
          ? null
          : WorkflowTemplateJobHiveJob.fromMap(
              (map['hiveJob'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      pigJob: map['pigJob'] == null
          ? null
          : WorkflowTemplateJobPigJob.fromMap(
              (map['pigJob'] as Map).cast<String, dynamic>(),
            ),
      prerequisiteStepIds: map['prerequisiteStepIds'] == null
          ? null
          : (map['prerequisiteStepIds'] as List).cast<String>(),
      prestoJob: map['prestoJob'] == null
          ? null
          : WorkflowTemplateJobPrestoJob.fromMap(
              (map['prestoJob'] as Map).cast<String, dynamic>(),
            ),
      pysparkJob: map['pysparkJob'] == null
          ? null
          : WorkflowTemplateJobPysparkJob.fromMap(
              (map['pysparkJob'] as Map).cast<String, dynamic>(),
            ),
      scheduling: map['scheduling'] == null
          ? null
          : WorkflowTemplateJobScheduling.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>(),
            ),
      sparkJob: map['sparkJob'] == null
          ? null
          : WorkflowTemplateJobSparkJob.fromMap(
              (map['sparkJob'] as Map).cast<String, dynamic>(),
            ),
      sparkRJob: map['sparkRJob'] == null
          ? null
          : WorkflowTemplateJobSparkRJob.fromMap(
              (map['sparkRJob'] as Map).cast<String, dynamic>(),
            ),
      sparkSqlJob: map['sparkSqlJob'] == null
          ? null
          : WorkflowTemplateJobSparkSqlJob.fromMap(
              (map['sparkSqlJob'] as Map).cast<String, dynamic>(),
            ),
      stepId: map['stepId'] as String,
    );
  }
}
