// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'driver_scheduling_config_response.dart';
import 'flink_job_response.dart';
import 'hadoop_job_response.dart';
import 'hive_job_response.dart';
import 'job_placement_response.dart';
import 'job_reference_response.dart';
import 'job_scheduling_response.dart';
import 'job_status_response.dart';
import 'pig_job_response.dart';
import 'presto_job_response.dart';
import 'py_spark_job_response.dart';
import 'spark_job_response.dart';
import 'spark_rjob_response.dart';
import 'spark_sql_job_response.dart';
import 'trino_job_response.dart';
import 'yarn_application_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  final bool done;

  /// If present, the location of miscellaneous control files which can be used as part of job setup and handling. If not present, control files might be placed in the same location as driver_output_uri.
  final String driverControlFilesUri;

  /// A URI pointing to the location of the stdout of the job's driver program.
  final String driverOutputResourceUri;

  /// Optional. Driver scheduling configuration.
  final DriverSchedulingConfigResponse driverSchedulingConfig;

  /// Optional. Job is a Flink job.
  final FlinkJobResponse flinkJob;

  /// Optional. Job is a Hadoop job.
  final HadoopJobResponse hadoopJob;

  /// Optional. Job is a Hive job.
  final HiveJobResponse hiveJob;

  /// A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that might be reused over time.
  final String jobUuid;

  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  final Map<String, String> labels;

  /// Optional. Job is a Pig job.
  final PigJobResponse pigJob;

  /// Job information, including how, when, and where to run the job.
  final JobPlacementResponse placement;

  /// Optional. Job is a Presto job.
  final PrestoJobResponse prestoJob;

  /// Optional. Job is a PySpark job.
  final PySparkJobResponse pysparkJob;

  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  final JobReferenceResponse reference;

  /// Optional. Job scheduling configuration.
  final JobSchedulingResponse scheduling;

  /// Optional. Job is a Spark job.
  final SparkJobResponse sparkJob;

  /// Optional. Job is a SparkR job.
  final SparkRJobResponse sparkRJob;

  /// Optional. Job is a SparkSql job.
  final SparkSqlJobResponse sparkSqlJob;

  /// The job status. Additional application-specific status information might be contained in the type_job and yarn_applications fields.
  final JobStatusResponse status;

  /// The previous job status.
  final List<JobStatusResponse> statusHistory;

  /// Optional. Job is a Trino job.
  final TrinoJobResponse trinoJob;

  /// The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It might be changed before final release.
  final List<YarnApplicationResponse> yarnApplications;

  /// Creates a new [GetJobResult].
  /// [done] Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  /// [driverControlFilesUri] If present, the location of miscellaneous control files which can be used as part of job setup and handling. If not present, control files might be placed in the same location as driver_output_uri.
  /// [driverOutputResourceUri] A URI pointing to the location of the stdout of the job's driver program.
  /// [driverSchedulingConfig] Optional. Driver scheduling configuration.
  /// [flinkJob] Optional. Job is a Flink job.
  /// [hadoopJob] Optional. Job is a Hadoop job.
  /// [hiveJob] Optional. Job is a Hive job.
  /// [jobUuid] A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that might be reused over time.
  /// [labels] Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  /// [pigJob] Optional. Job is a Pig job.
  /// [placement] Job information, including how, when, and where to run the job.
  /// [prestoJob] Optional. Job is a Presto job.
  /// [pysparkJob] Optional. Job is a PySpark job.
  /// [reference] Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  /// [scheduling] Optional. Job scheduling configuration.
  /// [sparkJob] Optional. Job is a Spark job.
  /// [sparkRJob] Optional. Job is a SparkR job.
  /// [sparkSqlJob] Optional. Job is a SparkSql job.
  /// [status] The job status. Additional application-specific status information might be contained in the type_job and yarn_applications fields.
  /// [statusHistory] The previous job status.
  /// [trinoJob] Optional. Job is a Trino job.
  /// [yarnApplications] The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It might be changed before final release.
  GetJobResult({
    required this.done,
    required this.driverControlFilesUri,
    required this.driverOutputResourceUri,
    required this.driverSchedulingConfig,
    required this.flinkJob,
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
    required this.trinoJob,
    required this.yarnApplications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['done'] = done;
    map['driverControlFilesUri'] = driverControlFilesUri;
    map['driverOutputResourceUri'] = driverOutputResourceUri;
    map['driverSchedulingConfig'] = driverSchedulingConfig.toMap();
    map['flinkJob'] = flinkJob.toMap();
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
        pulumi.Input.encodeList<JobStatusResponse, Map<String, dynamic>>(
            statusHistory, (value) => value.toMap());
    map['trinoJob'] = trinoJob.toMap();
    map['yarnApplications'] =
        pulumi.Input.encodeList<YarnApplicationResponse, Map<String, dynamic>>(
            yarnApplications, (value) => value.toMap());
    return map;
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      done: map['done'] as bool,
      driverControlFilesUri: map['driverControlFilesUri'] as String,
      driverOutputResourceUri: map['driverOutputResourceUri'] as String,
      driverSchedulingConfig: DriverSchedulingConfigResponse.fromMap(
          (map['driverSchedulingConfig'] as Map).cast<String, dynamic>()),
      flinkJob: FlinkJobResponse.fromMap(
          (map['flinkJob'] as Map).cast<String, dynamic>()),
      hadoopJob: HadoopJobResponse.fromMap(
          (map['hadoopJob'] as Map).cast<String, dynamic>()),
      hiveJob: HiveJobResponse.fromMap(
          (map['hiveJob'] as Map).cast<String, dynamic>()),
      jobUuid: map['jobUuid'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      pigJob: PigJobResponse.fromMap(
          (map['pigJob'] as Map).cast<String, dynamic>()),
      placement: JobPlacementResponse.fromMap(
          (map['placement'] as Map).cast<String, dynamic>()),
      prestoJob: PrestoJobResponse.fromMap(
          (map['prestoJob'] as Map).cast<String, dynamic>()),
      pysparkJob: PySparkJobResponse.fromMap(
          (map['pysparkJob'] as Map).cast<String, dynamic>()),
      reference: JobReferenceResponse.fromMap(
          (map['reference'] as Map).cast<String, dynamic>()),
      scheduling: JobSchedulingResponse.fromMap(
          (map['scheduling'] as Map).cast<String, dynamic>()),
      sparkJob: SparkJobResponse.fromMap(
          (map['sparkJob'] as Map).cast<String, dynamic>()),
      sparkRJob: SparkRJobResponse.fromMap(
          (map['sparkRJob'] as Map).cast<String, dynamic>()),
      sparkSqlJob: SparkSqlJobResponse.fromMap(
          (map['sparkSqlJob'] as Map).cast<String, dynamic>()),
      status: JobStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      statusHistory: pulumi.Input.decodeList<JobStatusResponse>(
          map['statusHistory'],
          (value) => JobStatusResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      trinoJob: TrinoJobResponse.fromMap(
          (map['trinoJob'] as Map).cast<String, dynamic>()),
      yarnApplications: pulumi.Input.decodeList<YarnApplicationResponse>(
          map['yarnApplications'],
          (value) => YarnApplicationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
