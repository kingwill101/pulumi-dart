// ignore_for_file: unused_element, unnecessary_cast

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

/// The set of arguments for Job.
class JobArgs5 {
  /// By default, you can only delete inactive jobs within
  /// Dataproc. Setting this to true, and calling destroy, will ensure that the
  /// job is first cancelled before issuing the delete.
  final Input<bool>? forceDelete;

  /// The config of Hadoop job
  final Input<JobHadoopConfig>? hadoopConfig;

  /// The config of hive job
  final Input<JobHiveConfig>? hiveConfig;

  /// The list of labels (key/value pairs) to add to the job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The config of pag job.
  final Input<JobPigConfig>? pigConfig;

  /// The config of job placement.
  final Input<JobPlacement> placement;

  /// The config of presto job
  final Input<JobPrestoConfig>? prestoConfig;

  /// The project in which the <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span> can be found and jobs
  /// subsequently run against. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The config of pySpark job.
  final Input<JobPysparkConfig>? pysparkConfig;

  /// The reference of the job
  final Input<JobReference>? reference;

  /// The Cloud Dataproc region. This essentially determines which clusters are available
  /// for this job to be submitted to. If not specified, defaults to <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  final Input<String>? region;

  /// Optional. Job scheduling configuration.
  final Input<JobScheduling>? scheduling;

  /// The config of the Spark job.
  final Input<JobSparkConfig>? sparkConfig;

  /// The config of SparkSql job
  final Input<JobSparksqlConfig>? sparksqlConfig;

  JobArgs5({
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
      map['hadoopConfig'] =
          Input.mapOptionalInputValue<JobHadoopConfig, Map<String, dynamic>>(
              hadoopConfigValue, (value) => value.toMap());
    }
    final hiveConfigValue = hiveConfig;
    if (hiveConfigValue != null) {
      map['hiveConfig'] =
          Input.mapOptionalInputValue<JobHiveConfig, Map<String, dynamic>>(
              hiveConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final pigConfigValue = pigConfig;
    if (pigConfigValue != null) {
      map['pigConfig'] =
          Input.mapOptionalInputValue<JobPigConfig, Map<String, dynamic>>(
              pigConfigValue, (value) => value.toMap());
    }
    map['placement'] = Input.mapInputValue<JobPlacement, Map<String, dynamic>>(
        placement, (value) => value.toMap());
    final prestoConfigValue = prestoConfig;
    if (prestoConfigValue != null) {
      map['prestoConfig'] =
          Input.mapOptionalInputValue<JobPrestoConfig, Map<String, dynamic>>(
              prestoConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pysparkConfigValue = pysparkConfig;
    if (pysparkConfigValue != null) {
      map['pysparkConfig'] =
          Input.mapOptionalInputValue<JobPysparkConfig, Map<String, dynamic>>(
              pysparkConfigValue, (value) => value.toMap());
    }
    final referenceValue = reference;
    if (referenceValue != null) {
      map['reference'] =
          Input.mapOptionalInputValue<JobReference, Map<String, dynamic>>(
              referenceValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] =
          Input.mapOptionalInputValue<JobScheduling, Map<String, dynamic>>(
              schedulingValue, (value) => value.toMap());
    }
    final sparkConfigValue = sparkConfig;
    if (sparkConfigValue != null) {
      map['sparkConfig'] =
          Input.mapOptionalInputValue<JobSparkConfig, Map<String, dynamic>>(
              sparkConfigValue, (value) => value.toMap());
    }
    final sparksqlConfigValue = sparksqlConfig;
    if (sparksqlConfigValue != null) {
      map['sparksqlConfig'] =
          Input.mapOptionalInputValue<JobSparksqlConfig, Map<String, dynamic>>(
              sparksqlConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory JobArgs5.fromMap(Map<String, dynamic> map) {
    return JobArgs5(
      forceDelete: Input.asOptionalInput<bool>(map['forceDelete']),
      hadoopConfig: Input.asOptionalInput<JobHadoopConfig>(map['hadoopConfig']),
      hiveConfig: Input.asOptionalInput<JobHiveConfig>(map['hiveConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      pigConfig: Input.asOptionalInput<JobPigConfig>(map['pigConfig']),
      placement: Input.asInput<JobPlacement>(map['placement']),
      prestoConfig: Input.asOptionalInput<JobPrestoConfig>(map['prestoConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      pysparkConfig:
          Input.asOptionalInput<JobPysparkConfig>(map['pysparkConfig']),
      reference: Input.asOptionalInput<JobReference>(map['reference']),
      region: Input.asOptionalInput<String>(map['region']),
      scheduling: Input.asOptionalInput<JobScheduling>(map['scheduling']),
      sparkConfig: Input.asOptionalInput<JobSparkConfig>(map['sparkConfig']),
      sparksqlConfig:
          Input.asOptionalInput<JobSparksqlConfig>(map['sparksqlConfig']),
    );
  }
}
