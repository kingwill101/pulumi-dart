// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_job_dataproc_v1beta2.dart';
import 'hive_job_dataproc_v1beta2.dart';
import 'job_placement_dataproc_v1beta2.dart';
import 'job_reference_dataproc_v1beta2.dart';
import 'job_scheduling_dataproc_v1beta2.dart';
import 'pig_job_dataproc_v1beta2.dart';
import 'presto_job_dataproc_v1beta2.dart';
import 'py_spark_job_dataproc_v1beta2.dart';
import 'spark_job_dataproc_v1beta2.dart';
import 'spark_rjob_dataproc_v1beta2.dart';
import 'spark_sql_job_dataproc_v1beta2.dart';

/// {@template pulumi_dataproc_v1beta2_job_dataproc_v1beta2_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_job_dataproc_v1beta2_args_doc}
class JobDataprocV1beta2Args {
  /// Optional. Job is a Hadoop job.
  final pulumi.Input<HadoopJobDataprocV1beta2>? hadoopJob;

  /// Optional. Job is a Hive job.
  final pulumi.Input<HiveJobDataprocV1beta2>? hiveJob;

  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  final pulumi.Input<Map<String, String>>? labels;

  /// Optional. Job is a Pig job.
  final pulumi.Input<PigJobDataprocV1beta2>? pigJob;

  /// Job information, including how, when, and where to run the job.
  final pulumi.Input<JobPlacementDataprocV1beta2> placement;

  /// Optional. Job is a Presto job.
  final pulumi.Input<PrestoJobDataprocV1beta2>? prestoJob;
  final pulumi.Input<String>? project;

  /// Optional. Job is a PySpark job.
  final pulumi.Input<PySparkJobDataprocV1beta2>? pysparkJob;

  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  final pulumi.Input<JobReferenceDataprocV1beta2>? reference;
  final pulumi.Input<String> region;

  /// Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id, then the second request will be ignored and the first Job created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  /// Optional. Job scheduling configuration.
  final pulumi.Input<JobSchedulingDataprocV1beta2>? scheduling;

  /// Optional. Job is a Spark job.
  final pulumi.Input<SparkJobDataprocV1beta2>? sparkJob;

  /// Optional. Job is a SparkR job.
  final pulumi.Input<SparkRJobDataprocV1beta2>? sparkRJob;

  /// Optional. Job is a SparkSql job.
  final pulumi.Input<SparkSqlJobDataprocV1beta2>? sparkSqlJob;

  /// Creates a new [JobDataprocV1beta2Args].
  /// [hadoopJob] Optional. Job is a Hadoop job.
  /// [hiveJob] Optional. Job is a Hive job.
  /// [labels] Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  /// [pigJob] Optional. Job is a Pig job.
  /// [placement] Job information, including how, when, and where to run the job.
  /// [prestoJob] Optional. Job is a Presto job.
  /// [project] Optional.
  /// [pysparkJob] Optional. Job is a PySpark job.
  /// [reference] Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  /// [region] Required.
  /// [requestId] Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id, then the second request will be ignored and the first Job created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [scheduling] Optional. Job scheduling configuration.
  /// [sparkJob] Optional. Job is a Spark job.
  /// [sparkRJob] Optional. Job is a SparkR job.
  /// [sparkSqlJob] Optional. Job is a SparkSql job.
  JobDataprocV1beta2Args({
    HadoopJobDataprocV1beta2? hadoopJob,
    HiveJobDataprocV1beta2? hiveJob,
    Map<String, String>? labels,
    PigJobDataprocV1beta2? pigJob,
    required JobPlacementDataprocV1beta2 placement,
    PrestoJobDataprocV1beta2? prestoJob,
    String? project,
    PySparkJobDataprocV1beta2? pysparkJob,
    JobReferenceDataprocV1beta2? reference,
    required String region,
    String? requestId,
    JobSchedulingDataprocV1beta2? scheduling,
    SparkJobDataprocV1beta2? sparkJob,
    SparkRJobDataprocV1beta2? sparkRJob,
    SparkSqlJobDataprocV1beta2? sparkSqlJob,
  }) : hadoopJob = pulumi.Input.asOptionalInput<HadoopJobDataprocV1beta2>(
         hadoopJob,
       ),
       hiveJob = pulumi.Input.asOptionalInput<HiveJobDataprocV1beta2>(hiveJob),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       pigJob = pulumi.Input.asOptionalInput<PigJobDataprocV1beta2>(pigJob),
       placement = pulumi.Input.asInput<JobPlacementDataprocV1beta2>(placement),
       prestoJob = pulumi.Input.asOptionalInput<PrestoJobDataprocV1beta2>(
         prestoJob,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       pysparkJob = pulumi.Input.asOptionalInput<PySparkJobDataprocV1beta2>(
         pysparkJob,
       ),
       reference = pulumi.Input.asOptionalInput<JobReferenceDataprocV1beta2>(
         reference,
       ),
       region = pulumi.Input.asInput<String>(region),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       scheduling = pulumi.Input.asOptionalInput<JobSchedulingDataprocV1beta2>(
         scheduling,
       ),
       sparkJob = pulumi.Input.asOptionalInput<SparkJobDataprocV1beta2>(
         sparkJob,
       ),
       sparkRJob = pulumi.Input.asOptionalInput<SparkRJobDataprocV1beta2>(
         sparkRJob,
       ),
       sparkSqlJob = pulumi.Input.asOptionalInput<SparkSqlJobDataprocV1beta2>(
         sparkSqlJob,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadoopJob':
          ?pulumi.Input.mapOptionalInputValue<
            HadoopJobDataprocV1beta2,
            Map<String, dynamic>
          >(hadoopJob, (value) => value.toMap()),
      'hiveJob':
          ?pulumi.Input.mapOptionalInputValue<
            HiveJobDataprocV1beta2,
            Map<String, dynamic>
          >(hiveJob, (value) => value.toMap()),
      'labels': ?labels,
      'pigJob':
          ?pulumi.Input.mapOptionalInputValue<
            PigJobDataprocV1beta2,
            Map<String, dynamic>
          >(pigJob, (value) => value.toMap()),
      'placement':
          pulumi.Input.mapInputValue<
            JobPlacementDataprocV1beta2,
            Map<String, dynamic>
          >(placement, (value) => value.toMap()),
      'prestoJob':
          ?pulumi.Input.mapOptionalInputValue<
            PrestoJobDataprocV1beta2,
            Map<String, dynamic>
          >(prestoJob, (value) => value.toMap()),
      'project': ?project,
      'pysparkJob':
          ?pulumi.Input.mapOptionalInputValue<
            PySparkJobDataprocV1beta2,
            Map<String, dynamic>
          >(pysparkJob, (value) => value.toMap()),
      'reference':
          ?pulumi.Input.mapOptionalInputValue<
            JobReferenceDataprocV1beta2,
            Map<String, dynamic>
          >(reference, (value) => value.toMap()),
      'region': region,
      'requestId': ?requestId,
      'scheduling':
          ?pulumi.Input.mapOptionalInputValue<
            JobSchedulingDataprocV1beta2,
            Map<String, dynamic>
          >(scheduling, (value) => value.toMap()),
      'sparkJob':
          ?pulumi.Input.mapOptionalInputValue<
            SparkJobDataprocV1beta2,
            Map<String, dynamic>
          >(sparkJob, (value) => value.toMap()),
      'sparkRJob':
          ?pulumi.Input.mapOptionalInputValue<
            SparkRJobDataprocV1beta2,
            Map<String, dynamic>
          >(sparkRJob, (value) => value.toMap()),
      'sparkSqlJob':
          ?pulumi.Input.mapOptionalInputValue<
            SparkSqlJobDataprocV1beta2,
            Map<String, dynamic>
          >(sparkSqlJob, (value) => value.toMap()),
    };
  }

  factory JobDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return JobDataprocV1beta2Args(
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
      placement: JobPlacementDataprocV1beta2.fromMap(
        (map['placement'] as Map).cast<String, dynamic>(),
      ),
      prestoJob: map['prestoJob'] == null
          ? null
          : PrestoJobDataprocV1beta2.fromMap(
              (map['prestoJob'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      pysparkJob: map['pysparkJob'] == null
          ? null
          : PySparkJobDataprocV1beta2.fromMap(
              (map['pysparkJob'] as Map).cast<String, dynamic>(),
            ),
      reference: map['reference'] == null
          ? null
          : JobReferenceDataprocV1beta2.fromMap(
              (map['reference'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
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
    );
  }
}
