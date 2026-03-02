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
  final pulumi.Input<String>? channelSettings;
  /// Column type mapping of the synchronization task See `column_data_type_settings` below.
  final pulumi.Input<List<DiJobJobSettingsColumnDataTypeSetting>>? columnDataTypeSettings;
  /// Periodic scheduling settings See `cycle_schedule_settings` below.
  final pulumi.Input<DiJobJobSettingsCycleScheduleSettings>? cycleScheduleSettings;
  /// List of DDL processing settings for synchronization tasks See `ddl_handling_settings` below.
  final pulumi.Input<List<DiJobJobSettingsDdlHandlingSetting>>? ddlHandlingSettings;
  /// Run-time setting parameter list See `runtime_settings` below.
  final pulumi.Input<List<DiJobJobSettingsRuntimeSetting>>? runtimeSettings;

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
      'columnDataTypeSettings': ?pulumi.Input.mapOptionalInputValue<List<DiJobJobSettingsColumnDataTypeSetting>, List<Map<String, dynamic>>>(columnDataTypeSettings, (value) => pulumi.Input.encodeList<DiJobJobSettingsColumnDataTypeSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cycleScheduleSettings': ?pulumi.Input.mapOptionalInputValue<DiJobJobSettingsCycleScheduleSettings, Map<String, dynamic>>(cycleScheduleSettings, (value) => value.toMap()),
      'ddlHandlingSettings': ?pulumi.Input.mapOptionalInputValue<List<DiJobJobSettingsDdlHandlingSetting>, List<Map<String, dynamic>>>(ddlHandlingSettings, (value) => pulumi.Input.encodeList<DiJobJobSettingsDdlHandlingSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runtimeSettings': ?pulumi.Input.mapOptionalInputValue<List<DiJobJobSettingsRuntimeSetting>, List<Map<String, dynamic>>>(runtimeSettings, (value) => pulumi.Input.encodeList<DiJobJobSettingsRuntimeSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiJobJobSettings.fromMap(Map<String, dynamic> map) {
    return DiJobJobSettings(
      channelSettings: map['channelSettings'] == null ? null : (map['channelSettings']! as String).input(),
      columnDataTypeSettings: map['columnDataTypeSettings'] == null ? null : (pulumi.Input.decodeList<DiJobJobSettingsColumnDataTypeSetting>(map['columnDataTypeSettings']!, (value) => DiJobJobSettingsColumnDataTypeSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cycleScheduleSettings: map['cycleScheduleSettings'] == null ? null : (DiJobJobSettingsCycleScheduleSettings.fromMap((map['cycleScheduleSettings']! as Map).cast<String, dynamic>())).input(),
      ddlHandlingSettings: map['ddlHandlingSettings'] == null ? null : (pulumi.Input.decodeList<DiJobJobSettingsDdlHandlingSetting>(map['ddlHandlingSettings']!, (value) => DiJobJobSettingsDdlHandlingSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      runtimeSettings: map['runtimeSettings'] == null ? null : (pulumi.Input.decodeList<DiJobJobSettingsRuntimeSetting>(map['runtimeSettings']!, (value) => DiJobJobSettingsRuntimeSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

