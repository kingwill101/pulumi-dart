import 'package:pulumi/pulumi.dart';
import '../job_hadoop_config/job_hadoop_config.dart';
import '../job_hive_config/job_hive_config.dart';
import '../job_pig_config/job_pig_config.dart';
import '../job_placement/job_placement.dart';
import '../job_presto_config/job_presto_config.dart';
import '../job_pyspark_config/job_pyspark_config.dart';
import '../job_reference/job_reference.dart';
import '../job_scheduling/job_scheduling.dart';
import '../job_spark_config/job_spark_config.dart';
import '../job_sparksql_config/job_sparksql_config.dart';
import '../job_status/job_status2.dart';
import 'job_args5.dart';

/// Manages a job resource within a Dataproc cluster within GCE. For more information see
/// [the official dataproc documentation](https://cloud.google.com/dataproc/).
///
/// !> **Note:** This resource does not support 'update' and changing any attributes will cause the resource to be recreated.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// This resource does not support import.
class Job5 extends CustomResource {
  /// If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  late final Output<String> driverControlsFilesUri;

  /// A URI pointing to the location of the stdout of the job's driver program.
  late final Output<String> driverOutputResourceUri;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  ///
  /// * `scheduling.max_failures_per_hour` - (Required) Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  ///
  /// * `scheduling.max_failures_total` - (Required) Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  late final Output<Map<String, String>> effectiveLabels;

  /// By default, you can only delete inactive jobs within
  /// Dataproc. Setting this to true, and calling destroy, will ensure that the
  /// job is first cancelled before issuing the delete.
  late final Output<bool?> forceDelete;

  /// The config of Hadoop job
  late final Output<JobHadoopConfig?> hadoopConfig;

  /// The config of hive job
  late final Output<JobHiveConfig?> hiveConfig;

  /// The list of labels (key/value pairs) to add to the job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The config of pag job.
  late final Output<JobPigConfig?> pigConfig;

  /// The config of job placement.
  late final Output<JobPlacement> placement;

  /// The config of presto job
  late final Output<JobPrestoConfig?> prestoConfig;

  /// The project in which the `cluster` can be found and jobs
  /// subsequently run against. If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The config of pySpark job.
  late final Output<JobPysparkConfig?> pysparkConfig;

  /// The reference of the job
  late final Output<JobReference> reference;

  /// The Cloud Dataproc region. This essentially determines which clusters are available
  /// for this job to be submitted to. If not specified, defaults to `global`.
  late final Output<String?> region;

  /// Optional. Job scheduling configuration.
  late final Output<JobScheduling?> scheduling;

  /// The config of the Spark job.
  late final Output<JobSparkConfig?> sparkConfig;

  /// The config of SparkSql job
  late final Output<JobSparksqlConfig?> sparksqlConfig;

  /// The status of the job.
  late final Output<List<JobStatus2>> statuses;

  Job5(
    String name, {
    JobArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/job:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.driverControlsFilesUri =
        registerOutput<String>('driverControlsFilesUri');
    this.driverOutputResourceUri =
        registerOutput<String>('driverOutputResourceUri');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.hadoopConfig = registerOutput<JobHadoopConfig?>('hadoopConfig');
    this.hiveConfig = registerOutput<JobHiveConfig?>('hiveConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.pigConfig = registerOutput<JobPigConfig?>('pigConfig');
    this.placement = registerOutput<JobPlacement>('placement');
    this.prestoConfig = registerOutput<JobPrestoConfig?>('prestoConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.pysparkConfig = registerOutput<JobPysparkConfig?>('pysparkConfig');
    this.reference = registerOutput<JobReference>('reference');
    this.region = registerOutput<String?>('region');
    this.scheduling = registerOutput<JobScheduling?>('scheduling');
    this.sparkConfig = registerOutput<JobSparkConfig?>('sparkConfig');
    this.sparksqlConfig = registerOutput<JobSparksqlConfig?>('sparksqlConfig');
    this.statuses = registerOutput<List<JobStatus2>>('statuses');
  }
}
