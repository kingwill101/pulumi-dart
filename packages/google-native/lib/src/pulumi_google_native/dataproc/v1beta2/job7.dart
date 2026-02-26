import 'package:pulumi/pulumi.dart';
import 'hadoop_job_response2.dart';
import 'hive_job_response2.dart';
import 'job_args7.dart';
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

/// Submits a job to a cluster.
/// Auto-naming is currently not supported for this resource.
class Job7 extends CustomResource {
  /// Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  late final Output<bool> done;

  /// If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  late final Output<String> driverControlFilesUri;

  /// A URI pointing to the location of the stdout of the job's driver program.
  late final Output<String> driverOutputResourceUri;

  /// Optional. Job is a Hadoop job.
  late final Output<HadoopJobResponse2> hadoopJob;

  /// Optional. Job is a Hive job.
  late final Output<HiveJobResponse2> hiveJob;

  /// A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that may be reused over time.
  late final Output<String> jobUuid;

  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  late final Output<Map<String, String>> labels;

  /// Optional. Job is a Pig job.
  late final Output<PigJobResponse2> pigJob;

  /// Job information, including how, when, and where to run the job.
  late final Output<JobPlacementResponse2> placement;

  /// Optional. Job is a Presto job.
  late final Output<PrestoJobResponse2> prestoJob;
  late final Output<String> project;

  /// Optional. Job is a PySpark job.
  late final Output<PySparkJobResponse2> pysparkJob;

  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  late final Output<JobReferenceResponse3> reference;
  late final Output<String> region;

  /// Optional. Job scheduling configuration.
  late final Output<JobSchedulingResponse2> scheduling;

  /// Optional. Job is a Spark job.
  late final Output<SparkJobResponse2> sparkJob;

  /// Optional. Job is a SparkR job.
  late final Output<SparkRJobResponse2> sparkRJob;

  /// Optional. Job is a SparkSql job.
  late final Output<SparkSqlJobResponse2> sparkSqlJob;

  /// The job status. Additional application-specific status information may be contained in the type_job and yarn_applications fields.
  late final Output<JobStatusResponse4> status;

  /// The previous job status.
  late final Output<List<JobStatusResponse4>> statusHistory;

  /// The email address of the user submitting the job. For jobs submitted on the cluster, the address is username@hostname.
  late final Output<String> submittedBy;

  /// The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
  late final Output<List<YarnApplicationResponse2>> yarnApplications;

  Job7(
    String name, {
    JobArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1beta2:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.done = Output.createUnknown<bool>();
    this.driverControlFilesUri = Output.createUnknown<String>();
    this.driverOutputResourceUri = Output.createUnknown<String>();
    this.hadoopJob = Output.createUnknown<HadoopJobResponse2>();
    this.hiveJob = Output.createUnknown<HiveJobResponse2>();
    this.jobUuid = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.pigJob = Output.createUnknown<PigJobResponse2>();
    this.placement = Output.createUnknown<JobPlacementResponse2>();
    this.prestoJob = Output.createUnknown<PrestoJobResponse2>();
    this.project = Output.createUnknown<String>();
    this.pysparkJob = Output.createUnknown<PySparkJobResponse2>();
    this.reference = Output.createUnknown<JobReferenceResponse3>();
    this.region = Output.createUnknown<String>();
    this.scheduling = Output.createUnknown<JobSchedulingResponse2>();
    this.sparkJob = Output.createUnknown<SparkJobResponse2>();
    this.sparkRJob = Output.createUnknown<SparkRJobResponse2>();
    this.sparkSqlJob = Output.createUnknown<SparkSqlJobResponse2>();
    this.status = Output.createUnknown<JobStatusResponse4>();
    this.statusHistory = Output.createUnknown<List<JobStatusResponse4>>();
    this.submittedBy = Output.createUnknown<String>();
    this.yarnApplications =
        Output.createUnknown<List<YarnApplicationResponse2>>();
  }
}
