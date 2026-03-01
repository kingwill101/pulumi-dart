// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_job_job_settings_column_data_type_setting.dart';
import 'di_job_job_settings_cycle_schedule_settings.dart';
import 'di_job_job_settings_ddl_handling_setting.dart';
import 'di_job_job_settings_runtime_setting.dart';

class DiJobJobSettings {
  /// Channel-related task settings, in the form of a Json String.
  ///
  /// For example,
  /// {"structInfo":"MANAGED","storageType":"TEXTFILE","writeMode":"APPEND","partitionColumns":[{"columnName":"pt","columnType":"STRING","comment":""}],"fieldDelimiter":""}
  final String? channelSettings;
  /// Column type mapping of the synchronization task See `column_data_type_settings` below.
  final List<DiJobJobSettingsColumnDataTypeSetting>? columnDataTypeSettings;
  /// Periodic scheduling settings See `cycle_schedule_settings` below.
  final DiJobJobSettingsCycleScheduleSettings? cycleScheduleSettings;
  /// List of DDL processing settings for synchronization tasks See `ddl_handling_settings` below.
  final List<DiJobJobSettingsDdlHandlingSetting>? ddlHandlingSettings;
  /// Run-time setting parameter list See `runtime_settings` below.
  final List<DiJobJobSettingsRuntimeSetting>? runtimeSettings;

  /// Creates a new [DiJobJobSettings].
  /// [channelSettings] Channel-related task settings, in the form of a Json String.
  /// [columnDataTypeSettings] Column type mapping of the synchronization task See `column_data_type_settings` below.
  /// [cycleScheduleSettings] Periodic scheduling settings See `cycle_schedule_settings` below.
  /// [ddlHandlingSettings] List of DDL processing settings for synchronization tasks See `ddl_handling_settings` below.
  /// [runtimeSettings] Run-time setting parameter list See `runtime_settings` below.
  DiJobJobSettings({
    this.channelSettings,
    this.columnDataTypeSettings,
    this.cycleScheduleSettings,
    this.ddlHandlingSettings,
    this.runtimeSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelSettings': ?channelSettings,
      'columnDataTypeSettings': ?columnDataTypeSettings == null ? null : pulumi.Input.encodeList<DiJobJobSettingsColumnDataTypeSetting, Map<String, dynamic>>(columnDataTypeSettings!, (value) => value.toMap()),
      'cycleScheduleSettings': ?cycleScheduleSettings == null ? null : cycleScheduleSettings!.toMap(),
      'ddlHandlingSettings': ?ddlHandlingSettings == null ? null : pulumi.Input.encodeList<DiJobJobSettingsDdlHandlingSetting, Map<String, dynamic>>(ddlHandlingSettings!, (value) => value.toMap()),
      'runtimeSettings': ?runtimeSettings == null ? null : pulumi.Input.encodeList<DiJobJobSettingsRuntimeSetting, Map<String, dynamic>>(runtimeSettings!, (value) => value.toMap()),
    };
  }

  factory DiJobJobSettings.fromMap(Map<String, dynamic> map) {
    return DiJobJobSettings(
      channelSettings: map['channelSettings'] == null ? null : map['channelSettings'] as String,
      columnDataTypeSettings: map['columnDataTypeSettings'] == null ? null : pulumi.Input.decodeList<DiJobJobSettingsColumnDataTypeSetting>(map['columnDataTypeSettings'], (value) => DiJobJobSettingsColumnDataTypeSetting.fromMap((value as Map).cast<String, dynamic>())),
      cycleScheduleSettings: map['cycleScheduleSettings'] == null ? null : DiJobJobSettingsCycleScheduleSettings.fromMap((map['cycleScheduleSettings'] as Map).cast<String, dynamic>()),
      ddlHandlingSettings: map['ddlHandlingSettings'] == null ? null : pulumi.Input.decodeList<DiJobJobSettingsDdlHandlingSetting>(map['ddlHandlingSettings'], (value) => DiJobJobSettingsDdlHandlingSetting.fromMap((value as Map).cast<String, dynamic>())),
      runtimeSettings: map['runtimeSettings'] == null ? null : pulumi.Input.decodeList<DiJobJobSettingsRuntimeSetting>(map['runtimeSettings'], (value) => DiJobJobSettingsRuntimeSetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

