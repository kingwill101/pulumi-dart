import 'package:pulumi/pulumi.dart' as pulumi;
import 'driver_scheduling_config_response.dart';
import 'flink_job_response.dart';
import 'hadoop_job_response.dart';
import 'hive_job_response.dart';
import 'job_args.dart';
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

/// Submits a job to a cluster.
/// Auto-naming is currently not supported for this resource.
class Job extends pulumi.CustomResource {
  /// Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  late final pulumi.Output<bool> done;
  /// If present, the location of miscellaneous control files which can be used as part of job setup and handling. If not present, control files might be placed in the same location as driver_output_uri.
  late final pulumi.Output<String> driverControlFilesUri;
  /// A URI pointing to the location of the stdout of the job's driver program.
  late final pulumi.Output<String> driverOutputResourceUri;
  /// Optional. Driver scheduling configuration.
  late final pulumi.Output<DriverSchedulingConfigResponse> driverSchedulingConfig;
  /// Optional. Job is a Flink job.
  late final pulumi.Output<FlinkJobResponse> flinkJob;
  /// Optional. Job is a Hadoop job.
  late final pulumi.Output<HadoopJobResponse> hadoopJob;
  /// Optional. Job is a Hive job.
  late final pulumi.Output<HiveJobResponse> hiveJob;
  /// A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that might be reused over time.
  late final pulumi.Output<String> jobUuid;
  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  late final pulumi.Output<Map<String, String>> labels;
  /// Optional. Job is a Pig job.
  late final pulumi.Output<PigJobResponse> pigJob;
  /// Job information, including how, when, and where to run the job.
  late final pulumi.Output<JobPlacementResponse> placement;
  /// Optional. Job is a Presto job.
  late final pulumi.Output<PrestoJobResponse> prestoJob;
  late final pulumi.Output<String> project;
  /// Optional. Job is a PySpark job.
  late final pulumi.Output<PySparkJobResponse> pysparkJob;
  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  late final pulumi.Output<JobReferenceResponse> reference;
  late final pulumi.Output<String> region;
  /// Optional. Job scheduling configuration.
  late final pulumi.Output<JobSchedulingResponse> scheduling;
  /// Optional. Job is a Spark job.
  late final pulumi.Output<SparkJobResponse> sparkJob;
  /// Optional. Job is a SparkR job.
  late final pulumi.Output<SparkRJobResponse> sparkRJob;
  /// Optional. Job is a SparkSql job.
  late final pulumi.Output<SparkSqlJobResponse> sparkSqlJob;
  /// The job status. Additional application-specific status information might be contained in the type_job and yarn_applications fields.
  late final pulumi.Output<JobStatusResponse> status;
  /// The previous job status.
  late final pulumi.Output<List<JobStatusResponse>> statusHistory;
  /// Optional. Job is a Trino job.
  late final pulumi.Output<TrinoJobResponse> trinoJob;
  /// The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It might be changed before final release.
  late final pulumi.Output<List<YarnApplicationResponse>> yarnApplications;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_dataproc_v1_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.done = registerOutput<bool>('done');
    this.driverControlFilesUri = registerOutput<String>('driverControlFilesUri');
    this.driverOutputResourceUri = registerOutput<String>('driverOutputResourceUri');
    this.driverSchedulingConfig = registerOutput<DriverSchedulingConfigResponse>('driverSchedulingConfig');
    this.flinkJob = registerOutput<FlinkJobResponse>('flinkJob');
    this.hadoopJob = registerOutput<HadoopJobResponse>('hadoopJob');
    this.hiveJob = registerOutput<HiveJobResponse>('hiveJob');
    this.jobUuid = registerOutput<String>('jobUuid');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.pigJob = registerOutput<PigJobResponse>('pigJob');
    this.placement = registerOutput<JobPlacementResponse>('placement');
    this.prestoJob = registerOutput<PrestoJobResponse>('prestoJob');
    this.project = registerOutput<String>('project');
    this.pysparkJob = registerOutput<PySparkJobResponse>('pysparkJob');
    this.reference = registerOutput<JobReferenceResponse>('reference');
    this.region = registerOutput<String>('region');
    this.scheduling = registerOutput<JobSchedulingResponse>('scheduling');
    this.sparkJob = registerOutput<SparkJobResponse>('sparkJob');
    this.sparkRJob = registerOutput<SparkRJobResponse>('sparkRJob');
    this.sparkSqlJob = registerOutput<SparkSqlJobResponse>('sparkSqlJob');
    this.status = registerOutput<JobStatusResponse>('status');
    this.statusHistory = registerOutput<List<JobStatusResponse>>('statusHistory');
    this.trinoJob = registerOutput<TrinoJobResponse>('trinoJob');
    this.yarnApplications = registerOutput<List<YarnApplicationResponse>>('yarnApplications');
  }
}
