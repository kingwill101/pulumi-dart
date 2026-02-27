// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

/// The set of arguments for Job.
class JobDataprocArgs {
  /// By default, you can only delete inactive jobs within
  /// Dataproc. Setting this to true, and calling destroy, will ensure that the
  /// job is first cancelled before issuing the delete.
  final pulumi.Input<bool>? forceDelete;

  /// The config of Hadoop job
  final pulumi.Input<JobHadoopConfig>? hadoopConfig;

  /// The config of hive job
  final pulumi.Input<JobHiveConfig>? hiveConfig;

  /// The list of labels (key/value pairs) to add to the job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The config of pag job.
  final pulumi.Input<JobPigConfig>? pigConfig;

  /// The config of job placement.
  final pulumi.Input<JobPlacement> placement;

  /// The config of presto job
  final pulumi.Input<JobPrestoConfig>? prestoConfig;

  /// The project in which the `cluster` can be found and jobs
  /// subsequently run against. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The config of pySpark job.
  final pulumi.Input<JobPysparkConfig>? pysparkConfig;

  /// The reference of the job
  final pulumi.Input<JobReference>? reference;

  /// The Cloud Dataproc region. This essentially determines which clusters are available
  /// for this job to be submitted to. If not specified, defaults to `global`.
  final pulumi.Input<String>? region;

  /// Optional. Job scheduling configuration.
  final pulumi.Input<JobScheduling>? scheduling;

  /// The config of the Spark job.
  final pulumi.Input<JobSparkConfig>? sparkConfig;

  /// The config of SparkSql job
  final pulumi.Input<JobSparksqlConfig>? sparksqlConfig;

  JobDataprocArgs({
    this.forceDelete,
    this.hadoopConfig,
    this.hiveConfig,
    this.labels,
    this.pigConfig,
    required this.placement,
    this.prestoConfig,
    this.project,
    this.pysparkConfig,
    this.reference,
    this.region,
    this.scheduling,
    this.sparkConfig,
    this.sparksqlConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final hadoopConfigValue = hadoopConfig;
    if (hadoopConfigValue != null) {
      map['hadoopConfig'] = pulumi.Input.mapOptionalInputValue<JobHadoopConfig,
          Map<String, dynamic>>(hadoopConfigValue, (value) => value.toMap());
    }
    final hiveConfigValue = hiveConfig;
    if (hiveConfigValue != null) {
      map['hiveConfig'] = pulumi.Input.mapOptionalInputValue<JobHiveConfig,
          Map<String, dynamic>>(hiveConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final pigConfigValue = pigConfig;
    if (pigConfigValue != null) {
      map['pigConfig'] = pulumi.Input.mapOptionalInputValue<JobPigConfig,
          Map<String, dynamic>>(pigConfigValue, (value) => value.toMap());
    }
    map['placement'] =
        pulumi.Input.mapInputValue<JobPlacement, Map<String, dynamic>>(
            placement, (value) => value.toMap());
    final prestoConfigValue = prestoConfig;
    if (prestoConfigValue != null) {
      map['prestoConfig'] = pulumi.Input.mapOptionalInputValue<JobPrestoConfig,
          Map<String, dynamic>>(prestoConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pysparkConfigValue = pysparkConfig;
    if (pysparkConfigValue != null) {
      map['pysparkConfig'] = pulumi.Input.mapOptionalInputValue<
          JobPysparkConfig,
          Map<String, dynamic>>(pysparkConfigValue, (value) => value.toMap());
    }
    final referenceValue = reference;
    if (referenceValue != null) {
      map['reference'] = pulumi.Input.mapOptionalInputValue<JobReference,
          Map<String, dynamic>>(referenceValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] = pulumi.Input.mapOptionalInputValue<JobScheduling,
          Map<String, dynamic>>(schedulingValue, (value) => value.toMap());
    }
    final sparkConfigValue = sparkConfig;
    if (sparkConfigValue != null) {
      map['sparkConfig'] = pulumi.Input.mapOptionalInputValue<JobSparkConfig,
          Map<String, dynamic>>(sparkConfigValue, (value) => value.toMap());
    }
    final sparksqlConfigValue = sparksqlConfig;
    if (sparksqlConfigValue != null) {
      map['sparksqlConfig'] = pulumi.Input.mapOptionalInputValue<
          JobSparksqlConfig,
          Map<String, dynamic>>(sparksqlConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobDataprocArgs.fromMap(Map<String, dynamic> map) {
    return JobDataprocArgs(
      forceDelete: pulumi.Input.asOptionalInput<bool>(map['forceDelete']),
      hadoopConfig:
          pulumi.Input.asOptionalInput<JobHadoopConfig>(map['hadoopConfig']),
      hiveConfig:
          pulumi.Input.asOptionalInput<JobHiveConfig>(map['hiveConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      pigConfig: pulumi.Input.asOptionalInput<JobPigConfig>(map['pigConfig']),
      placement: pulumi.Input.asInput<JobPlacement>(map['placement']),
      prestoConfig:
          pulumi.Input.asOptionalInput<JobPrestoConfig>(map['prestoConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pysparkConfig:
          pulumi.Input.asOptionalInput<JobPysparkConfig>(map['pysparkConfig']),
      reference: pulumi.Input.asOptionalInput<JobReference>(map['reference']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scheduling:
          pulumi.Input.asOptionalInput<JobScheduling>(map['scheduling']),
      sparkConfig:
          pulumi.Input.asOptionalInput<JobSparkConfig>(map['sparkConfig']),
      sparksqlConfig: pulumi.Input.asOptionalInput<JobSparksqlConfig>(
          map['sparksqlConfig']),
    );
  }
}
