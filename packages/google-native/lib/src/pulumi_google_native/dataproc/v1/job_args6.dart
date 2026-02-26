// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'driver_scheduling_config.dart';
import 'flink_job.dart';
import 'hadoop_job.dart';
import 'hive_job.dart';
import 'job_placement.dart';
import 'job_reference2.dart';
import 'job_scheduling.dart';
import 'pig_job.dart';
import 'presto_job.dart';
import 'py_spark_job.dart';
import 'spark_job.dart';
import 'spark_rjob.dart';
import 'spark_sql_job.dart';
import 'trino_job.dart';

/// The set of arguments for Job.
class JobArgs6 {
  /// Optional. Driver scheduling configuration.
  final Input<DriverSchedulingConfig>? driverSchedulingConfig;

  /// Optional. Job is a Flink job.
  final Input<FlinkJob>? flinkJob;

  /// Optional. Job is a Hadoop job.
  final Input<HadoopJob>? hadoopJob;

  /// Optional. Job is a Hive job.
  final Input<HiveJob>? hiveJob;

  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  final Input<Map<String, String>>? labels;

  /// Optional. Job is a Pig job.
  final Input<PigJob>? pigJob;

  /// Job information, including how, when, and where to run the job.
  final Input<JobPlacement> placement;

  /// Optional. Job is a Presto job.
  final Input<PrestoJob>? prestoJob;
  final Input<String>? project;

  /// Optional. Job is a PySpark job.
  final Input<PySparkJob>? pysparkJob;

  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  final Input<JobReference2>? reference;
  final Input<String> region;

  /// Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id, then the second request will be ignored and the first Job created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// Optional. Job scheduling configuration.
  final Input<JobScheduling>? scheduling;

  /// Optional. Job is a Spark job.
  final Input<SparkJob>? sparkJob;

  /// Optional. Job is a SparkR job.
  final Input<SparkRJob>? sparkRJob;

  /// Optional. Job is a SparkSql job.
  final Input<SparkSqlJob>? sparkSqlJob;

  /// Optional. Job is a Trino job.
  final Input<TrinoJob>? trinoJob;

  JobArgs6({
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
      map['driverSchedulingConfig'] = Input.mapOptionalInputValue<
              DriverSchedulingConfig, Map<String, dynamic>>(
          driverSchedulingConfigValue, (value) => value.toMap());
    }
    final flinkJobValue = flinkJob;
    if (flinkJobValue != null) {
      map['flinkJob'] =
          Input.mapOptionalInputValue<FlinkJob, Map<String, dynamic>>(
              flinkJobValue, (value) => value.toMap());
    }
    final hadoopJobValue = hadoopJob;
    if (hadoopJobValue != null) {
      map['hadoopJob'] =
          Input.mapOptionalInputValue<HadoopJob, Map<String, dynamic>>(
              hadoopJobValue, (value) => value.toMap());
    }
    final hiveJobValue = hiveJob;
    if (hiveJobValue != null) {
      map['hiveJob'] =
          Input.mapOptionalInputValue<HiveJob, Map<String, dynamic>>(
              hiveJobValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final pigJobValue = pigJob;
    if (pigJobValue != null) {
      map['pigJob'] = Input.mapOptionalInputValue<PigJob, Map<String, dynamic>>(
          pigJobValue, (value) => value.toMap());
    }
    map['placement'] = Input.mapInputValue<JobPlacement, Map<String, dynamic>>(
        placement, (value) => value.toMap());
    final prestoJobValue = prestoJob;
    if (prestoJobValue != null) {
      map['prestoJob'] =
          Input.mapOptionalInputValue<PrestoJob, Map<String, dynamic>>(
              prestoJobValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pysparkJobValue = pysparkJob;
    if (pysparkJobValue != null) {
      map['pysparkJob'] =
          Input.mapOptionalInputValue<PySparkJob, Map<String, dynamic>>(
              pysparkJobValue, (value) => value.toMap());
    }
    final referenceValue = reference;
    if (referenceValue != null) {
      map['reference'] =
          Input.mapOptionalInputValue<JobReference2, Map<String, dynamic>>(
              referenceValue, (value) => value.toMap());
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] =
          Input.mapOptionalInputValue<JobScheduling, Map<String, dynamic>>(
              schedulingValue, (value) => value.toMap());
    }
    final sparkJobValue = sparkJob;
    if (sparkJobValue != null) {
      map['sparkJob'] =
          Input.mapOptionalInputValue<SparkJob, Map<String, dynamic>>(
              sparkJobValue, (value) => value.toMap());
    }
    final sparkRJobValue = sparkRJob;
    if (sparkRJobValue != null) {
      map['sparkRJob'] =
          Input.mapOptionalInputValue<SparkRJob, Map<String, dynamic>>(
              sparkRJobValue, (value) => value.toMap());
    }
    final sparkSqlJobValue = sparkSqlJob;
    if (sparkSqlJobValue != null) {
      map['sparkSqlJob'] =
          Input.mapOptionalInputValue<SparkSqlJob, Map<String, dynamic>>(
              sparkSqlJobValue, (value) => value.toMap());
    }
    final trinoJobValue = trinoJob;
    if (trinoJobValue != null) {
      map['trinoJob'] =
          Input.mapOptionalInputValue<TrinoJob, Map<String, dynamic>>(
              trinoJobValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobArgs6.fromMap(Map<String, dynamic> map) {
    return JobArgs6(
      driverSchedulingConfig: Input.asOptionalInput<DriverSchedulingConfig>(
          map['driverSchedulingConfig']),
      flinkJob: Input.asOptionalInput<FlinkJob>(map['flinkJob']),
      hadoopJob: Input.asOptionalInput<HadoopJob>(map['hadoopJob']),
      hiveJob: Input.asOptionalInput<HiveJob>(map['hiveJob']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      pigJob: Input.asOptionalInput<PigJob>(map['pigJob']),
      placement: Input.asInput<JobPlacement>(map['placement']),
      prestoJob: Input.asOptionalInput<PrestoJob>(map['prestoJob']),
      project: Input.asOptionalInput<String>(map['project']),
      pysparkJob: Input.asOptionalInput<PySparkJob>(map['pysparkJob']),
      reference: Input.asOptionalInput<JobReference2>(map['reference']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      scheduling: Input.asOptionalInput<JobScheduling>(map['scheduling']),
      sparkJob: Input.asOptionalInput<SparkJob>(map['sparkJob']),
      sparkRJob: Input.asOptionalInput<SparkRJob>(map['sparkRJob']),
      sparkSqlJob: Input.asOptionalInput<SparkSqlJob>(map['sparkSqlJob']),
      trinoJob: Input.asOptionalInput<TrinoJob>(map['trinoJob']),
    );
  }
}
