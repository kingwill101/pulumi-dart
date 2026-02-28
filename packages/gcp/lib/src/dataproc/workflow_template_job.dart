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
    final map = <String, dynamic>{};
    final hadoopJobValue = hadoopJob;
    if (hadoopJobValue != null) {
      map['hadoopJob'] = hadoopJobValue.toMap();
    }
    final hiveJobValue = hiveJob;
    if (hiveJobValue != null) {
      map['hiveJob'] = hiveJobValue.toMap();
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final pigJobValue = pigJob;
    if (pigJobValue != null) {
      map['pigJob'] = pigJobValue.toMap();
    }
    final prerequisiteStepIdsValue = prerequisiteStepIds;
    if (prerequisiteStepIdsValue != null) {
      map['prerequisiteStepIds'] = prerequisiteStepIdsValue;
    }
    final prestoJobValue = prestoJob;
    if (prestoJobValue != null) {
      map['prestoJob'] = prestoJobValue.toMap();
    }
    final pysparkJobValue = pysparkJob;
    if (pysparkJobValue != null) {
      map['pysparkJob'] = pysparkJobValue.toMap();
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] = schedulingValue.toMap();
    }
    final sparkJobValue = sparkJob;
    if (sparkJobValue != null) {
      map['sparkJob'] = sparkJobValue.toMap();
    }
    final sparkRJobValue = sparkRJob;
    if (sparkRJobValue != null) {
      map['sparkRJob'] = sparkRJobValue.toMap();
    }
    final sparkSqlJobValue = sparkSqlJob;
    if (sparkSqlJobValue != null) {
      map['sparkSqlJob'] = sparkSqlJobValue.toMap();
    }
    map['stepId'] = stepId;
    return map;
  }

  factory WorkflowTemplateJob.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJob(
      hadoopJob: map['hadoopJob'] == null
          ? null
          : WorkflowTemplateJobHadoopJob.fromMap(
              (map['hadoopJob'] as Map).cast<String, dynamic>()),
      hiveJob: map['hiveJob'] == null
          ? null
          : WorkflowTemplateJobHiveJob.fromMap(
              (map['hiveJob'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      pigJob: map['pigJob'] == null
          ? null
          : WorkflowTemplateJobPigJob.fromMap(
              (map['pigJob'] as Map).cast<String, dynamic>()),
      prerequisiteStepIds: map['prerequisiteStepIds'] == null
          ? null
          : (map['prerequisiteStepIds'] as List).cast<String>(),
      prestoJob: map['prestoJob'] == null
          ? null
          : WorkflowTemplateJobPrestoJob.fromMap(
              (map['prestoJob'] as Map).cast<String, dynamic>()),
      pysparkJob: map['pysparkJob'] == null
          ? null
          : WorkflowTemplateJobPysparkJob.fromMap(
              (map['pysparkJob'] as Map).cast<String, dynamic>()),
      scheduling: map['scheduling'] == null
          ? null
          : WorkflowTemplateJobScheduling.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>()),
      sparkJob: map['sparkJob'] == null
          ? null
          : WorkflowTemplateJobSparkJob.fromMap(
              (map['sparkJob'] as Map).cast<String, dynamic>()),
      sparkRJob: map['sparkRJob'] == null
          ? null
          : WorkflowTemplateJobSparkRJob.fromMap(
              (map['sparkRJob'] as Map).cast<String, dynamic>()),
      sparkSqlJob: map['sparkSqlJob'] == null
          ? null
          : WorkflowTemplateJobSparkSqlJob.fromMap(
              (map['sparkSqlJob'] as Map).cast<String, dynamic>()),
      stepId: map['stepId'] as String,
    );
  }
}
