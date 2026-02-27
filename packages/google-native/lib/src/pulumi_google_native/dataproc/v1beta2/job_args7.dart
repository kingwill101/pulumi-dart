// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'hadoop_job2.dart';
import 'hive_job2.dart';
import 'job_placement2.dart';
import 'job_reference3.dart';
import 'job_scheduling2.dart';
import 'pig_job2.dart';
import 'presto_job2.dart';
import 'py_spark_job2.dart';
import 'spark_job2.dart';
import 'spark_rjob2.dart';
import 'spark_sql_job2.dart';

/// The set of arguments for Job.
class JobArgs7 {
  /// Optional. Job is a Hadoop job.
  final Input<HadoopJob2>? hadoopJob;

  /// Optional. Job is a Hive job.
  final Input<HiveJob2>? hiveJob;

  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  final Input<Map<String, String>>? labels;

  /// Optional. Job is a Pig job.
  final Input<PigJob2>? pigJob;

  /// Job information, including how, when, and where to run the job.
  final Input<JobPlacement2> placement;

  /// Optional. Job is a Presto job.
  final Input<PrestoJob2>? prestoJob;
  final Input<String>? project;

  /// Optional. Job is a PySpark job.
  final Input<PySparkJob2>? pysparkJob;

  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  final Input<JobReference3>? reference;
  final Input<String> region;

  /// Optional. A unique id used to identify the request. If the server receives two SubmitJobRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#google.cloud.dataproc.v1.SubmitJobRequest)s with the same id, then the second request will be ignored and the first Job created and stored in the backend is returned.It is recommended to always set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// Optional. Job scheduling configuration.
  final Input<JobScheduling2>? scheduling;

  /// Optional. Job is a Spark job.
  final Input<SparkJob2>? sparkJob;

  /// Optional. Job is a SparkR job.
  final Input<SparkRJob2>? sparkRJob;

  /// Optional. Job is a SparkSql job.
  final Input<SparkSqlJob2>? sparkSqlJob;

  JobArgs7({
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
      map['hadoopJob'] =
          Input.mapOptionalInputValue<HadoopJob2, Map<String, dynamic>>(
              hadoopJobValue, (value) => value.toMap());
    }
    final hiveJobValue = hiveJob;
    if (hiveJobValue != null) {
      map['hiveJob'] =
          Input.mapOptionalInputValue<HiveJob2, Map<String, dynamic>>(
              hiveJobValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final pigJobValue = pigJob;
    if (pigJobValue != null) {
      map['pigJob'] =
          Input.mapOptionalInputValue<PigJob2, Map<String, dynamic>>(
              pigJobValue, (value) => value.toMap());
    }
    map['placement'] = Input.mapInputValue<JobPlacement2, Map<String, dynamic>>(
        placement, (value) => value.toMap());
    final prestoJobValue = prestoJob;
    if (prestoJobValue != null) {
      map['prestoJob'] =
          Input.mapOptionalInputValue<PrestoJob2, Map<String, dynamic>>(
              prestoJobValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pysparkJobValue = pysparkJob;
    if (pysparkJobValue != null) {
      map['pysparkJob'] =
          Input.mapOptionalInputValue<PySparkJob2, Map<String, dynamic>>(
              pysparkJobValue, (value) => value.toMap());
    }
    final referenceValue = reference;
    if (referenceValue != null) {
      map['reference'] =
          Input.mapOptionalInputValue<JobReference3, Map<String, dynamic>>(
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
          Input.mapOptionalInputValue<JobScheduling2, Map<String, dynamic>>(
              schedulingValue, (value) => value.toMap());
    }
    final sparkJobValue = sparkJob;
    if (sparkJobValue != null) {
      map['sparkJob'] =
          Input.mapOptionalInputValue<SparkJob2, Map<String, dynamic>>(
              sparkJobValue, (value) => value.toMap());
    }
    final sparkRJobValue = sparkRJob;
    if (sparkRJobValue != null) {
      map['sparkRJob'] =
          Input.mapOptionalInputValue<SparkRJob2, Map<String, dynamic>>(
              sparkRJobValue, (value) => value.toMap());
    }
    final sparkSqlJobValue = sparkSqlJob;
    if (sparkSqlJobValue != null) {
      map['sparkSqlJob'] =
          Input.mapOptionalInputValue<SparkSqlJob2, Map<String, dynamic>>(
              sparkSqlJobValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobArgs7.fromMap(Map<String, dynamic> map) {
    return JobArgs7(
      hadoopJob: Input.asOptionalInput<HadoopJob2>(map['hadoopJob']),
      hiveJob: Input.asOptionalInput<HiveJob2>(map['hiveJob']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      pigJob: Input.asOptionalInput<PigJob2>(map['pigJob']),
      placement: Input.asInput<JobPlacement2>(map['placement']),
      prestoJob: Input.asOptionalInput<PrestoJob2>(map['prestoJob']),
      project: Input.asOptionalInput<String>(map['project']),
      pysparkJob: Input.asOptionalInput<PySparkJob2>(map['pysparkJob']),
      reference: Input.asOptionalInput<JobReference3>(map['reference']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      scheduling: Input.asOptionalInput<JobScheduling2>(map['scheduling']),
      sparkJob: Input.asOptionalInput<SparkJob2>(map['sparkJob']),
      sparkRJob: Input.asOptionalInput<SparkRJob2>(map['sparkRJob']),
      sparkSqlJob: Input.asOptionalInput<SparkSqlJob2>(map['sparkSqlJob']),
    );
  }
}
