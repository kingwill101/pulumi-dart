// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'hadoop_job_response2.dart';
import 'hive_job_response2.dart';
import 'job_placement_response2.dart';
import 'job_reference_response3.dart';
import 'job_scheduling_response2.dart';
import 'job_status_response4.dart';
import 'pig_job_response2.dart';
import 'presto_job_response2.dart';
import 'py_spark_job_response2.dart';
import 'spark_job_response2.dart';
import 'spark_rjob_response2.dart';
import 'spark_sql_job_response2.dart';
import 'yarn_application_response2.dart';

/// Result data returned by getJob.
class GetJobResult7 {
  /// Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  final bool done;

  /// If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  final String driverControlFilesUri;

  /// A URI pointing to the location of the stdout of the job's driver program.
  final String driverOutputResourceUri;

  /// Optional. Job is a Hadoop job.
  final HadoopJobResponse2 hadoopJob;

  /// Optional. Job is a Hive job.
  final HiveJobResponse2 hiveJob;

  /// A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that may be reused over time.
  final String jobUuid;

  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  final Map<String, String> labels;

  /// Optional. Job is a Pig job.
  final PigJobResponse2 pigJob;

  /// Job information, including how, when, and where to run the job.
  final JobPlacementResponse2 placement;

  /// Optional. Job is a Presto job.
  final PrestoJobResponse2 prestoJob;

  /// Optional. Job is a PySpark job.
  final PySparkJobResponse2 pysparkJob;

  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  final JobReferenceResponse3 reference;

  /// Optional. Job scheduling configuration.
  final JobSchedulingResponse2 scheduling;

  /// Optional. Job is a Spark job.
  final SparkJobResponse2 sparkJob;

  /// Optional. Job is a SparkR job.
  final SparkRJobResponse2 sparkRJob;

  /// Optional. Job is a SparkSql job.
  final SparkSqlJobResponse2 sparkSqlJob;

  /// The job status. Additional application-specific status information may be contained in the type_job and yarn_applications fields.
  final JobStatusResponse4 status;

  /// The previous job status.
  final List<JobStatusResponse4> statusHistory;

  /// The email address of the user submitting the job. For jobs submitted on the cluster, the address is username@hostname.
  final String submittedBy;

  /// The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  final List<YarnApplicationResponse2> yarnApplications;

  GetJobResult7({
    required this.done,
    required this.driverControlFilesUri,
    required this.driverOutputResourceUri,
    required this.hadoopJob,
    required this.hiveJob,
    required this.jobUuid,
    required this.labels,
    required this.pigJob,
    required this.placement,
    required this.prestoJob,
    required this.pysparkJob,
    required this.reference,
    required this.scheduling,
    required this.sparkJob,
    required this.sparkRJob,
    required this.sparkSqlJob,
    required this.status,
    required this.statusHistory,
    required this.submittedBy,
    required this.yarnApplications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['done'] = done;
    map['driverControlFilesUri'] = driverControlFilesUri;
    map['driverOutputResourceUri'] = driverOutputResourceUri;
    map['hadoopJob'] = hadoopJob.toMap();
    map['hiveJob'] = hiveJob.toMap();
    map['jobUuid'] = jobUuid;
    map['labels'] = labels;
    map['pigJob'] = pigJob.toMap();
    map['placement'] = placement.toMap();
    map['prestoJob'] = prestoJob.toMap();
    map['pysparkJob'] = pysparkJob.toMap();
    map['reference'] = reference.toMap();
    map['scheduling'] = scheduling.toMap();
    map['sparkJob'] = sparkJob.toMap();
    map['sparkRJob'] = sparkRJob.toMap();
    map['sparkSqlJob'] = sparkSqlJob.toMap();
    map['status'] = status.toMap();
    map['statusHistory'] =
        Input.encodeList<JobStatusResponse4, Map<String, dynamic>>(
            statusHistory, (value) => value.toMap());
    map['submittedBy'] = submittedBy;
    map['yarnApplications'] =
        Input.encodeList<YarnApplicationResponse2, Map<String, dynamic>>(
            yarnApplications, (value) => value.toMap());
    return map;
  }

  factory GetJobResult7.fromMap(Map<String, dynamic> map) {
    return GetJobResult7(
      done: map['done'] as bool,
      driverControlFilesUri: map['driverControlFilesUri'] as String,
      driverOutputResourceUri: map['driverOutputResourceUri'] as String,
      hadoopJob: HadoopJobResponse2.fromMap(
          (map['hadoopJob'] as Map).cast<String, dynamic>()),
      hiveJob: HiveJobResponse2.fromMap(
          (map['hiveJob'] as Map).cast<String, dynamic>()),
      jobUuid: map['jobUuid'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      pigJob: PigJobResponse2.fromMap(
          (map['pigJob'] as Map).cast<String, dynamic>()),
      placement: JobPlacementResponse2.fromMap(
          (map['placement'] as Map).cast<String, dynamic>()),
      prestoJob: PrestoJobResponse2.fromMap(
          (map['prestoJob'] as Map).cast<String, dynamic>()),
      pysparkJob: PySparkJobResponse2.fromMap(
          (map['pysparkJob'] as Map).cast<String, dynamic>()),
      reference: JobReferenceResponse3.fromMap(
          (map['reference'] as Map).cast<String, dynamic>()),
      scheduling: JobSchedulingResponse2.fromMap(
          (map['scheduling'] as Map).cast<String, dynamic>()),
      sparkJob: SparkJobResponse2.fromMap(
          (map['sparkJob'] as Map).cast<String, dynamic>()),
      sparkRJob: SparkRJobResponse2.fromMap(
          (map['sparkRJob'] as Map).cast<String, dynamic>()),
      sparkSqlJob: SparkSqlJobResponse2.fromMap(
          (map['sparkSqlJob'] as Map).cast<String, dynamic>()),
      status: JobStatusResponse4.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      statusHistory: Input.decodeList<JobStatusResponse4>(
          map['statusHistory'],
          (value) => JobStatusResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      submittedBy: map['submittedBy'] as String,
      yarnApplications: Input.decodeList<YarnApplicationResponse2>(
          map['yarnApplications'],
          (value) => YarnApplicationResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
