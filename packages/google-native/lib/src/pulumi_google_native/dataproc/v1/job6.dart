import 'package:pulumi/pulumi.dart' hide Config;
import 'driver_scheduling_config_response.dart';
import 'flink_job_response.dart';
import 'hadoop_job_response.dart';
import 'hive_job_response.dart';
import 'job_args6.dart';
import 'job_placement_response.dart';
import 'job_reference_response2.dart';
import 'job_scheduling_response.dart';
import 'job_status_response3.dart';
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
class Job6 extends CustomResource {
  /// Indicates whether the job is completed. If the value is false, the job is still in progress. If true, the job is completed, and status.state field will indicate if it was successful, failed, or cancelled.
  late final Output<bool> done;

  /// If present, the location of miscellaneous control files which can be used as part of job setup and handling. If not present, control files might be placed in the same location as driver_output_uri.
  late final Output<String> driverControlFilesUri;

  /// A URI pointing to the location of the stdout of the job's driver program.
  late final Output<String> driverOutputResourceUri;

  /// Optional. Driver scheduling configuration.
  late final Output<DriverSchedulingConfigResponse> driverSchedulingConfig;

  /// Optional. Job is a Flink job.
  late final Output<FlinkJobResponse> flinkJob;

  /// Optional. Job is a Hadoop job.
  late final Output<HadoopJobResponse> hadoopJob;

  /// Optional. Job is a Hive job.
  late final Output<HiveJobResponse> hiveJob;

  /// A UUID that uniquely identifies a job within the project over time. This is in contrast to a user-settable reference.job_id that might be reused over time.
  late final Output<String> jobUuid;

  /// Optional. The labels to associate with this job. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a job.
  late final Output<Map<String, String>> labels;

  /// Optional. Job is a Pig job.
  late final Output<PigJobResponse> pigJob;

  /// Job information, including how, when, and where to run the job.
  late final Output<JobPlacementResponse> placement;

  /// Optional. Job is a Presto job.
  late final Output<PrestoJobResponse> prestoJob;
  late final Output<String> project;

  /// Optional. Job is a PySpark job.
  late final Output<PySparkJobResponse> pysparkJob;

  /// Optional. The fully qualified reference to the job, which can be used to obtain the equivalent REST path of the job resource. If this property is not specified when a job is created, the server generates a job_id.
  late final Output<JobReferenceResponse2> reference;
  late final Output<String> region;

  /// Optional. Job scheduling configuration.
  late final Output<JobSchedulingResponse> scheduling;

  /// Optional. Job is a Spark job.
  late final Output<SparkJobResponse> sparkJob;

  /// Optional. Job is a SparkR job.
  late final Output<SparkRJobResponse> sparkRJob;

  /// Optional. Job is a SparkSql job.
  late final Output<SparkSqlJobResponse> sparkSqlJob;

  /// The job status. Additional application-specific status information might be contained in the type_job and yarn_applications fields.
  late final Output<JobStatusResponse3> status;

  /// The previous job status.
  late final Output<List<JobStatusResponse3>> statusHistory;

  /// Optional. Job is a Trino job.
  late final Output<TrinoJobResponse> trinoJob;

  /// The collection of YARN applications spun up by this job.Beta Feature: This report is available for testing purposes only. It might be changed before final release.
  late final Output<List<YarnApplicationResponse>> yarnApplications;

  Job6(
    String name, {
    JobArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.done = registerOutput<bool>('done');
    this.driverControlFilesUri =
        registerOutput<String>('driverControlFilesUri');
    this.driverOutputResourceUri =
        registerOutput<String>('driverOutputResourceUri');
    this.driverSchedulingConfig =
        registerOutput<DriverSchedulingConfigResponse>(
            'driverSchedulingConfig');
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
    this.reference = registerOutput<JobReferenceResponse2>('reference');
    this.region = registerOutput<String>('region');
    this.scheduling = registerOutput<JobSchedulingResponse>('scheduling');
    this.sparkJob = registerOutput<SparkJobResponse>('sparkJob');
    this.sparkRJob = registerOutput<SparkRJobResponse>('sparkRJob');
    this.sparkSqlJob = registerOutput<SparkSqlJobResponse>('sparkSqlJob');
    this.status = registerOutput<JobStatusResponse3>('status');
    this.statusHistory =
        registerOutput<List<JobStatusResponse3>>('statusHistory');
    this.trinoJob = registerOutput<TrinoJobResponse>('trinoJob');
    this.yarnApplications =
        registerOutput<List<YarnApplicationResponse>>('yarnApplications');
  }
}
