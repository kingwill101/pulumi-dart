// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_logging_setting_audio_recording_config.dart';
import 'app_version_snapshot_app_logging_setting_bigquery_export_setting.dart';
import 'app_version_snapshot_app_logging_setting_cloud_logging_setting.dart';
import 'app_version_snapshot_app_logging_setting_conversation_logging_setting.dart';
import 'app_version_snapshot_app_logging_setting_redaction_config.dart';

class AppVersionSnapshotAppLoggingSetting {
  /// (Output)
  /// Configuration for how the audio interactions should be recorded.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppLoggingSettingAudioRecordingConfig>? audioRecordingConfigs;
  /// (Output)
  /// Settings to describe the BigQuery export behaviors for the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppLoggingSettingBigqueryExportSetting>? bigqueryExportSettings;
  /// (Output)
  /// Settings to describe the Cloud Logging behaviors for the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppLoggingSettingCloudLoggingSetting>? cloudLoggingSettings;
  /// (Output)
  /// Settings to describe the conversation logging behaviors for the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppLoggingSettingConversationLoggingSetting>? conversationLoggingSettings;
  /// (Output)
  /// Configuration to instruct how sensitive data should be handled.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppLoggingSettingRedactionConfig>? redactionConfigs;

  /// Creates a new [AppVersionSnapshotAppLoggingSetting].
  /// [audioRecordingConfigs] (Output)
  /// [bigqueryExportSettings] (Output)
  /// [cloudLoggingSettings] (Output)
  /// [conversationLoggingSettings] (Output)
  /// [redactionConfigs] (Output)
  AppVersionSnapshotAppLoggingSetting({
    this.audioRecordingConfigs,
    this.bigqueryExportSettings,
    this.cloudLoggingSettings,
    this.conversationLoggingSettings,
    this.redactionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioRecordingConfigs': ?audioRecordingConfigs == null ? null : pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingAudioRecordingConfig, Map<String, dynamic>>(audioRecordingConfigs!, (value) => value.toMap()),
      'bigqueryExportSettings': ?bigqueryExportSettings == null ? null : pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingBigqueryExportSetting, Map<String, dynamic>>(bigqueryExportSettings!, (value) => value.toMap()),
      'cloudLoggingSettings': ?cloudLoggingSettings == null ? null : pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingCloudLoggingSetting, Map<String, dynamic>>(cloudLoggingSettings!, (value) => value.toMap()),
      'conversationLoggingSettings': ?conversationLoggingSettings == null ? null : pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingConversationLoggingSetting, Map<String, dynamic>>(conversationLoggingSettings!, (value) => value.toMap()),
      'redactionConfigs': ?redactionConfigs == null ? null : pulumi.Input.encodeList<AppVersionSnapshotAppLoggingSettingRedactionConfig, Map<String, dynamic>>(redactionConfigs!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshotAppLoggingSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSetting(
      audioRecordingConfigs: map['audioRecordingConfigs'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingAudioRecordingConfig>(map['audioRecordingConfigs'], (value) => AppVersionSnapshotAppLoggingSettingAudioRecordingConfig.fromMap((value as Map).cast<String, dynamic>())),
      bigqueryExportSettings: map['bigqueryExportSettings'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingBigqueryExportSetting>(map['bigqueryExportSettings'], (value) => AppVersionSnapshotAppLoggingSettingBigqueryExportSetting.fromMap((value as Map).cast<String, dynamic>())),
      cloudLoggingSettings: map['cloudLoggingSettings'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingCloudLoggingSetting>(map['cloudLoggingSettings'], (value) => AppVersionSnapshotAppLoggingSettingCloudLoggingSetting.fromMap((value as Map).cast<String, dynamic>())),
      conversationLoggingSettings: map['conversationLoggingSettings'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingConversationLoggingSetting>(map['conversationLoggingSettings'], (value) => AppVersionSnapshotAppLoggingSettingConversationLoggingSetting.fromMap((value as Map).cast<String, dynamic>())),
      redactionConfigs: map['redactionConfigs'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotAppLoggingSettingRedactionConfig>(map['redactionConfigs'], (value) => AppVersionSnapshotAppLoggingSettingRedactionConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

