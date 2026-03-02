// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_job_destination_data_source_setting.dart';
import 'di_job_job_settings.dart';
import 'di_job_resource_settings.dart';
import 'di_job_source_data_source_setting.dart';
import 'di_job_table_mapping.dart';
import 'di_job_transformation_rule.dart';

/// {@template pulumi_dataworks_di_job_di_job_args_doc}
/// The set of arguments for DiJob.
/// {@endtemplate}
/// {@macro pulumi_dataworks_di_job_di_job_args_doc}
class DiJobArgs {
  /// Description of the integration task
  final pulumi.Input<String>? description;
  /// Destination data source See `destination_data_source_settings` below.
  final pulumi.Input<List<DiJobDestinationDataSourceSetting>> destinationDataSourceSettings;
  /// The type of the target data source. Enumerated values: Hologres and Hive.
  final pulumi.Input<String> destinationDataSourceType;
  /// Task Name.
  final pulumi.Input<String> jobName;
  /// The dimension settings of the synchronization task, including the DDL processing policy, the source and destination column data type mapping policy, and the task runtime parameters. See `job_settings` below.
  final pulumi.Input<DiJobJobSettings>? jobSettings;
  /// Synchronization type, optional enumeration values are:
  ///
  /// Fulllandrealtimeincremental (full and real-time incremental)
  ///
  /// RealtimeIncremental
  ///
  /// Full
  ///
  /// Offflineincremental
  ///
  /// FullAndOfflineIncremental (full amount + offline increment)
  final pulumi.Input<String> migrationType;
  /// Project Id
  final pulumi.Input<int>? projectId;
  /// Resource Group Properties See `resource_settings` below.
  final pulumi.Input<DiJobResourceSettings> resourceSettings;
  /// Source data source setting List See `source_data_source_settings` below.
  final pulumi.Input<List<DiJobSourceDataSourceSetting>> sourceDataSourceSettings;
  /// The type of the source data source. The enumerated value is MySQL.
  final pulumi.Input<String> sourceDataSourceType;
  /// Synchronize object transformation mapping list See `table_mappings` below.
  final pulumi.Input<List<DiJobTableMapping>> tableMappings;
  /// Definition list of synchronization object conversion rules See `transformation_rules` below.
  final pulumi.Input<List<DiJobTransformationRule>>? transformationRules;

  /// Creates a new [DiJobArgs].
  /// [description] Description of the integration task
  /// [destinationDataSourceSettings] Destination data source See `destination_data_source_settings` below.
  /// [destinationDataSourceType] The type of the target data source. Enumerated values: Hologres and Hive.
  /// [jobName] Task Name.
  /// [jobSettings] The dimension settings of the synchronization task, including the DDL processing policy, the source and destination column data type mapping policy, and the task runtime parameters. See `job_settings` below.
  /// [migrationType] Synchronization type, optional enumeration values are:
  /// [projectId] Project Id
  /// [resourceSettings] Resource Group Properties See `resource_settings` below.
  /// [sourceDataSourceSettings] Source data source setting List See `source_data_source_settings` below.
  /// [sourceDataSourceType] The type of the source data source. The enumerated value is MySQL.
  /// [tableMappings] Synchronize object transformation mapping list See `table_mappings` below.
  /// [transformationRules] Definition list of synchronization object conversion rules See `transformation_rules` below.
  DiJobArgs({
    this.description,
    required this.destinationDataSourceSettings,
    required this.destinationDataSourceType,
    required this.jobName,
    this.jobSettings,
    required this.migrationType,
    this.projectId,
    required this.resourceSettings,
    required this.sourceDataSourceSettings,
    required this.sourceDataSourceType,
    required this.tableMappings,
    this.transformationRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationDataSourceSettings': pulumi.Input.mapInputValue<List<DiJobDestinationDataSourceSetting>, List<Map<String, dynamic>>>(destinationDataSourceSettings, (value) => pulumi.Input.encodeList<DiJobDestinationDataSourceSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationDataSourceType': destinationDataSourceType,
      'jobName': jobName,
      'jobSettings': ?pulumi.Input.mapOptionalInputValue<DiJobJobSettings, Map<String, dynamic>>(jobSettings, (value) => value.toMap()),
      'migrationType': migrationType,
      'projectId': ?projectId,
      'resourceSettings': pulumi.Input.mapInputValue<DiJobResourceSettings, Map<String, dynamic>>(resourceSettings, (value) => value.toMap()),
      'sourceDataSourceSettings': pulumi.Input.mapInputValue<List<DiJobSourceDataSourceSetting>, List<Map<String, dynamic>>>(sourceDataSourceSettings, (value) => pulumi.Input.encodeList<DiJobSourceDataSourceSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceDataSourceType': sourceDataSourceType,
      'tableMappings': pulumi.Input.mapInputValue<List<DiJobTableMapping>, List<Map<String, dynamic>>>(tableMappings, (value) => pulumi.Input.encodeList<DiJobTableMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transformationRules': ?pulumi.Input.mapOptionalInputValue<List<DiJobTransformationRule>, List<Map<String, dynamic>>>(transformationRules, (value) => pulumi.Input.encodeList<DiJobTransformationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiJobArgs.fromMap(Map<String, dynamic> map) {
    return DiJobArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationDataSourceSettings: (pulumi.Input.decodeList<DiJobDestinationDataSourceSetting>(map['destinationDataSourceSettings'], (value) => DiJobDestinationDataSourceSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinationDataSourceType: (map['destinationDataSourceType'] as String).input(),
      jobName: (map['jobName'] as String).input(),
      jobSettings: map['jobSettings'] == null ? null : (DiJobJobSettings.fromMap((map['jobSettings']! as Map).cast<String, dynamic>())).input(),
      migrationType: (map['migrationType'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as int).input(),
      resourceSettings: (DiJobResourceSettings.fromMap((map['resourceSettings'] as Map).cast<String, dynamic>())).input(),
      sourceDataSourceSettings: (pulumi.Input.decodeList<DiJobSourceDataSourceSetting>(map['sourceDataSourceSettings'], (value) => DiJobSourceDataSourceSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceDataSourceType: (map['sourceDataSourceType'] as String).input(),
      tableMappings: (pulumi.Input.decodeList<DiJobTableMapping>(map['tableMappings'], (value) => DiJobTableMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transformationRules: map['transformationRules'] == null ? null : (pulumi.Input.decodeList<DiJobTransformationRule>(map['transformationRules']!, (value) => DiJobTransformationRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

