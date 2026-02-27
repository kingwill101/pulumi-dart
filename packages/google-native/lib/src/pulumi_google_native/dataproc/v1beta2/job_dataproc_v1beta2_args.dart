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

/// The set of arguments for Job.
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

  JobDataprocV1beta2Args({
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
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hadoopJobValue = hadoopJob;
    if (hadoopJobValue != null) {
      map['hadoopJob'] = pulumi.Input.mapOptionalInputValue<
          HadoopJobDataprocV1beta2,
          Map<String, dynamic>>(hadoopJobValue, (value) => value.toMap());
    }
    final hiveJobValue = hiveJob;
    if (hiveJobValue != null) {
      map['hiveJob'] = pulumi.Input.mapOptionalInputValue<
          HiveJobDataprocV1beta2,
          Map<String, dynamic>>(hiveJobValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final pigJobValue = pigJob;
    if (pigJobValue != null) {
      map['pigJob'] = pulumi.Input.mapOptionalInputValue<PigJobDataprocV1beta2,
          Map<String, dynamic>>(pigJobValue, (value) => value.toMap());
    }
    map['placement'] = pulumi.Input.mapInputValue<JobPlacementDataprocV1beta2,
        Map<String, dynamic>>(placement, (value) => value.toMap());
    final prestoJobValue = prestoJob;
    if (prestoJobValue != null) {
      map['prestoJob'] = pulumi.Input.mapOptionalInputValue<
          PrestoJobDataprocV1beta2,
          Map<String, dynamic>>(prestoJobValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pysparkJobValue = pysparkJob;
    if (pysparkJobValue != null) {
      map['pysparkJob'] = pulumi.Input.mapOptionalInputValue<
          PySparkJobDataprocV1beta2,
          Map<String, dynamic>>(pysparkJobValue, (value) => value.toMap());
    }
    final referenceValue = reference;
    if (referenceValue != null) {
      map['reference'] = pulumi.Input.mapOptionalInputValue<
          JobReferenceDataprocV1beta2,
          Map<String, dynamic>>(referenceValue, (value) => value.toMap());
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] = pulumi.Input.mapOptionalInputValue<
          JobSchedulingDataprocV1beta2,
          Map<String, dynamic>>(schedulingValue, (value) => value.toMap());
    }
    final sparkJobValue = sparkJob;
    if (sparkJobValue != null) {
      map['sparkJob'] = pulumi.Input.mapOptionalInputValue<
          SparkJobDataprocV1beta2,
          Map<String, dynamic>>(sparkJobValue, (value) => value.toMap());
    }
    final sparkRJobValue = sparkRJob;
    if (sparkRJobValue != null) {
      map['sparkRJob'] = pulumi.Input.mapOptionalInputValue<
          SparkRJobDataprocV1beta2,
          Map<String, dynamic>>(sparkRJobValue, (value) => value.toMap());
    }
    final sparkSqlJobValue = sparkSqlJob;
    if (sparkSqlJobValue != null) {
      map['sparkSqlJob'] = pulumi.Input.mapOptionalInputValue<
          SparkSqlJobDataprocV1beta2,
          Map<String, dynamic>>(sparkSqlJobValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return JobDataprocV1beta2Args(
      hadoopJob: pulumi.Input.asOptionalInput<HadoopJobDataprocV1beta2>(
          map['hadoopJob']),
      hiveJob:
          pulumi.Input.asOptionalInput<HiveJobDataprocV1beta2>(map['hiveJob']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      pigJob:
          pulumi.Input.asOptionalInput<PigJobDataprocV1beta2>(map['pigJob']),
      placement:
          pulumi.Input.asInput<JobPlacementDataprocV1beta2>(map['placement']),
      prestoJob: pulumi.Input.asOptionalInput<PrestoJobDataprocV1beta2>(
          map['prestoJob']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pysparkJob: pulumi.Input.asOptionalInput<PySparkJobDataprocV1beta2>(
          map['pysparkJob']),
      reference: pulumi.Input.asOptionalInput<JobReferenceDataprocV1beta2>(
          map['reference']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      scheduling: pulumi.Input.asOptionalInput<JobSchedulingDataprocV1beta2>(
          map['scheduling']),
      sparkJob: pulumi.Input.asOptionalInput<SparkJobDataprocV1beta2>(
          map['sparkJob']),
      sparkRJob: pulumi.Input.asOptionalInput<SparkRJobDataprocV1beta2>(
          map['sparkRJob']),
      sparkSqlJob: pulumi.Input.asOptionalInput<SparkSqlJobDataprocV1beta2>(
          map['sparkSqlJob']),
    );
  }
}
