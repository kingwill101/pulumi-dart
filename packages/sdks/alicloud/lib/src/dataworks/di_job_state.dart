// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_job_destination_data_source_setting.dart';
import 'di_job_job_settings.dart';
import 'di_job_resource_settings.dart';
import 'di_job_source_data_source_setting.dart';
import 'di_job_table_mapping.dart';
import 'di_job_transformation_rule.dart';

/// Input properties used for looking up and filtering DiJob resources.
class DiJobState {
  /// Description of the integration task
  final pulumi.Input<String>? description;
  /// Destination data source See `destination_data_source_settings` below.
  final pulumi.Input<List<DiJobDestinationDataSourceSetting>>? destinationDataSourceSettings;
  /// The type of the target data source. Enumerated values: Hologres and Hive.
  final pulumi.Input<String>? destinationDataSourceType;
  /// Integration Task Id
  final pulumi.Input<int>? diJobId;
  /// Task Name.
  final pulumi.Input<String>? jobName;
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
  final pulumi.Input<String>? migrationType;
  /// Project Id
  final pulumi.Input<int>? projectId;
  /// Resource Group Properties See `resource_settings` below.
  final pulumi.Input<DiJobResourceSettings>? resourceSettings;
  /// Source data source setting List See `source_data_source_settings` below.
  final pulumi.Input<List<DiJobSourceDataSourceSetting>>? sourceDataSourceSettings;
  /// The type of the source data source. The enumerated value is MySQL.
  final pulumi.Input<String>? sourceDataSourceType;
  /// Synchronize object transformation mapping list See `table_mappings` below.
  final pulumi.Input<List<DiJobTableMapping>>? tableMappings;
  /// Definition list of synchronization object conversion rules See `transformation_rules` below.
  final pulumi.Input<List<DiJobTransformationRule>>? transformationRules;

  /// Creates a new [DiJobState].
  /// [description] Description of the integration task
  /// [destinationDataSourceSettings] Destination data source See `destination_data_source_settings` below.
  /// [destinationDataSourceType] The type of the target data source. Enumerated values: Hologres and Hive.
  /// [diJobId] Integration Task Id
  /// [jobName] Task Name.
  /// [jobSettings] The dimension settings of the synchronization task, including the DDL processing policy, the source and destination column data type mapping policy, and the task runtime parameters. See `job_settings` below.
  /// [migrationType] Synchronization type, optional enumeration values are:
  /// [projectId] Project Id
  /// [resourceSettings] Resource Group Properties See `resource_settings` below.
  /// [sourceDataSourceSettings] Source data source setting List See `source_data_source_settings` below.
  /// [sourceDataSourceType] The type of the source data source. The enumerated value is MySQL.
  /// [tableMappings] Synchronize object transformation mapping list See `table_mappings` below.
  /// [transformationRules] Definition list of synchronization object conversion rules See `transformation_rules` below.
  DiJobState({
    this.description,
    this.destinationDataSourceSettings,
    this.destinationDataSourceType,
    this.diJobId,
    this.jobName,
    this.jobSettings,
    this.migrationType,
    this.projectId,
    this.resourceSettings,
    this.sourceDataSourceSettings,
    this.sourceDataSourceType,
    this.tableMappings,
    this.transformationRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationDataSourceSettings': ?pulumi.Input.mapOptionalInputValue<List<DiJobDestinationDataSourceSetting>, List<Map<String, dynamic>>>(destinationDataSourceSettings, (value) => pulumi.Input.encodeList<DiJobDestinationDataSourceSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationDataSourceType': ?destinationDataSourceType,
      'diJobId': ?diJobId,
      'jobName': ?jobName,
      'jobSettings': ?pulumi.Input.mapOptionalInputValue<DiJobJobSettings, Map<String, dynamic>>(jobSettings, (value) => value.toMap()),
      'migrationType': ?migrationType,
      'projectId': ?projectId,
      'resourceSettings': ?pulumi.Input.mapOptionalInputValue<DiJobResourceSettings, Map<String, dynamic>>(resourceSettings, (value) => value.toMap()),
      'sourceDataSourceSettings': ?pulumi.Input.mapOptionalInputValue<List<DiJobSourceDataSourceSetting>, List<Map<String, dynamic>>>(sourceDataSourceSettings, (value) => pulumi.Input.encodeList<DiJobSourceDataSourceSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceDataSourceType': ?sourceDataSourceType,
      'tableMappings': ?pulumi.Input.mapOptionalInputValue<List<DiJobTableMapping>, List<Map<String, dynamic>>>(tableMappings, (value) => pulumi.Input.encodeList<DiJobTableMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transformationRules': ?pulumi.Input.mapOptionalInputValue<List<DiJobTransformationRule>, List<Map<String, dynamic>>>(transformationRules, (value) => pulumi.Input.encodeList<DiJobTransformationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiJobState.fromMap(Map<String, dynamic> map) {
    return DiJobState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationDataSourceSettings: (() { final guardedValue = map['destinationDataSourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiJobDestinationDataSourceSetting>(guardedValue, (value) => DiJobDestinationDataSourceSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      destinationDataSourceType: (() { final guardedValue = map['destinationDataSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diJobId: (() { final guardedValue = map['diJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobSettings: (() { final guardedValue = map['jobSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiJobJobSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      migrationType: (() { final guardedValue = map['migrationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceSettings: (() { final guardedValue = map['resourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiJobResourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceDataSourceSettings: (() { final guardedValue = map['sourceDataSourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiJobSourceDataSourceSetting>(guardedValue, (value) => DiJobSourceDataSourceSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceDataSourceType: (() { final guardedValue = map['sourceDataSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableMappings: (() { final guardedValue = map['tableMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiJobTableMapping>(guardedValue, (value) => DiJobTableMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transformationRules: (() { final guardedValue = map['transformationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiJobTransformationRule>(guardedValue, (value) => DiJobTransformationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

