// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'driver_scheduling_config.dart';
import 'flink_job.dart';
import 'hadoop_job.dart';
import 'hive_job.dart';
import 'job_placement.dart';
import 'job_reference_dataproc_v1.dart';
import 'job_scheduling.dart';
import 'pig_job.dart';
import 'presto_job.dart';
import 'py_spark_job.dart';
import 'spark_job.dart';
import 'spark_rjob.dart';
import 'spark_sql_job.dart';
import 'trino_job.dart';

/// The set of arguments for Job.
class JobDataprocV1Args {
  /// Optional. Driver scheduling configuration.
  final pulumi.Input<DriverSchedulingConfig>? driverSchedulingConfig;

  /// Optional. Job is a Flink job.
  final pulumi.Input<FlinkJob>? flinkJob;

  /// Optional. Job is a Hadoop job.
  final pulumi.Input<HadoopJob>? hadoopJob;

  /// Optional. Job is a Hive job.
  final pulumi.Input<HiveJob>? hiveJob;

  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  final pulumi.Input<Map<String, String>>? labels;

  /// Optional. Job is a Pig job.
  final pulumi.Input<PigJob>? pigJob;

  /// Job information, including how, when, and where to run the job.
  final pulumi.Input<JobPlacement> placement;

  /// Optional. Job is a Presto job.
  final pulumi.Input<PrestoJob>? prestoJob;
  final pulumi.Input<String>? project;

  /// Optional. Job is a PySpark job.
  final pulumi.Input<PySparkJob>? pysparkJob;

  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  final pulumi.Input<JobReferenceDataprocV1>? reference;
  final pulumi.Input<String> region;

  /// Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id, then the second request will be ignored and the first Job created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  /// Optional. Job scheduling configuration.
  final pulumi.Input<JobScheduling>? scheduling;

  /// Optional. Job is a Spark job.
  final pulumi.Input<SparkJob>? sparkJob;

  /// Optional. Job is a SparkR job.
  final pulumi.Input<SparkRJob>? sparkRJob;

  /// Optional. Job is a SparkSql job.
  final pulumi.Input<SparkSqlJob>? sparkSqlJob;

  /// Optional. Job is a Trino job.
  final pulumi.Input<TrinoJob>? trinoJob;

  JobDataprocV1Args({
    this.driverSchedulingConfig,
    this.flinkJob,
    this.hadoopJob,
    this.hiveJob,
    this.labels,
    this.pigJob,
    required this.placement,
    this.prestoJob,
    this.project,
    this.pysparkJob,
    this.reference,
    required this.region,
    this.requestId,
    this.scheduling,
    this.sparkJob,
    this.sparkRJob,
    this.sparkSqlJob,
    this.trinoJob,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final driverSchedulingConfigValue = driverSchedulingConfig;
    if (driverSchedulingConfigValue != null) {
      map['driverSchedulingConfig'] = pulumi.Input.mapOptionalInputValue<
              DriverSchedulingConfig, Map<String, dynamic>>(
          driverSchedulingConfigValue, (value) => value.toMap());
    }
    final flinkJobValue = flinkJob;
    if (flinkJobValue != null) {
      map['flinkJob'] =
          pulumi.Input.mapOptionalInputValue<FlinkJob, Map<String, dynamic>>(
              flinkJobValue, (value) => value.toMap());
    }
    final hadoopJobValue = hadoopJob;
    if (hadoopJobValue != null) {
      map['hadoopJob'] =
          pulumi.Input.mapOptionalInputValue<HadoopJob, Map<String, dynamic>>(
              hadoopJobValue, (value) => value.toMap());
    }
    final hiveJobValue = hiveJob;
    if (hiveJobValue != null) {
      map['hiveJob'] =
          pulumi.Input.mapOptionalInputValue<HiveJob, Map<String, dynamic>>(
              hiveJobValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final pigJobValue = pigJob;
    if (pigJobValue != null) {
      map['pigJob'] =
          pulumi.Input.mapOptionalInputValue<PigJob, Map<String, dynamic>>(
              pigJobValue, (value) => value.toMap());
    }
    map['placement'] =
        pulumi.Input.mapInputValue<JobPlacement, Map<String, dynamic>>(
            placement, (value) => value.toMap());
    final prestoJobValue = prestoJob;
    if (prestoJobValue != null) {
      map['prestoJob'] =
          pulumi.Input.mapOptionalInputValue<PrestoJob, Map<String, dynamic>>(
              prestoJobValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pysparkJobValue = pysparkJob;
    if (pysparkJobValue != null) {
      map['pysparkJob'] =
          pulumi.Input.mapOptionalInputValue<PySparkJob, Map<String, dynamic>>(
              pysparkJobValue, (value) => value.toMap());
    }
    final referenceValue = reference;
    if (referenceValue != null) {
      map['reference'] = pulumi.Input.mapOptionalInputValue<
          JobReferenceDataprocV1,
          Map<String, dynamic>>(referenceValue, (value) => value.toMap());
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] = pulumi.Input.mapOptionalInputValue<JobScheduling,
          Map<String, dynamic>>(schedulingValue, (value) => value.toMap());
    }
    final sparkJobValue = sparkJob;
    if (sparkJobValue != null) {
      map['sparkJob'] =
          pulumi.Input.mapOptionalInputValue<SparkJob, Map<String, dynamic>>(
              sparkJobValue, (value) => value.toMap());
    }
    final sparkRJobValue = sparkRJob;
    if (sparkRJobValue != null) {
      map['sparkRJob'] =
          pulumi.Input.mapOptionalInputValue<SparkRJob, Map<String, dynamic>>(
              sparkRJobValue, (value) => value.toMap());
    }
    final sparkSqlJobValue = sparkSqlJob;
    if (sparkSqlJobValue != null) {
      map['sparkSqlJob'] =
          pulumi.Input.mapOptionalInputValue<SparkSqlJob, Map<String, dynamic>>(
              sparkSqlJobValue, (value) => value.toMap());
    }
    final trinoJobValue = trinoJob;
    if (trinoJobValue != null) {
      map['trinoJob'] =
          pulumi.Input.mapOptionalInputValue<TrinoJob, Map<String, dynamic>>(
              trinoJobValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobDataprocV1Args.fromMap(Map<String, dynamic> map) {
    return JobDataprocV1Args(
      driverSchedulingConfig:
          pulumi.Input.asOptionalInput<DriverSchedulingConfig>(
              map['driverSchedulingConfig']),
      flinkJob: pulumi.Input.asOptionalInput<FlinkJob>(map['flinkJob']),
      hadoopJob: pulumi.Input.asOptionalInput<HadoopJob>(map['hadoopJob']),
      hiveJob: pulumi.Input.asOptionalInput<HiveJob>(map['hiveJob']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      pigJob: pulumi.Input.asOptionalInput<PigJob>(map['pigJob']),
      placement: pulumi.Input.asInput<JobPlacement>(map['placement']),
      prestoJob: pulumi.Input.asOptionalInput<PrestoJob>(map['prestoJob']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pysparkJob: pulumi.Input.asOptionalInput<PySparkJob>(map['pysparkJob']),
      reference: pulumi.Input.asOptionalInput<JobReferenceDataprocV1>(
          map['reference']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      scheduling:
          pulumi.Input.asOptionalInput<JobScheduling>(map['scheduling']),
      sparkJob: pulumi.Input.asOptionalInput<SparkJob>(map['sparkJob']),
      sparkRJob: pulumi.Input.asOptionalInput<SparkRJob>(map['sparkRJob']),
      sparkSqlJob:
          pulumi.Input.asOptionalInput<SparkSqlJob>(map['sparkSqlJob']),
      trinoJob: pulumi.Input.asOptionalInput<TrinoJob>(map['trinoJob']),
    );
  }
}
