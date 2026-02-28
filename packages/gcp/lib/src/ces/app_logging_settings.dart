// ignore_for_file: unused_element, unnecessary_cast

import 'app_logging_settings_audio_recording_config.dart';
import 'app_logging_settings_bigquery_export_settings.dart';
import 'app_logging_settings_cloud_logging_settings.dart';
import 'app_logging_settings_conversation_logging_settings.dart';
import 'app_logging_settings_redaction_config.dart';

class AppLoggingSettings {
  /// Configuration for how the audio interactions should be recorded.
  /// Structure is documented below.
  final AppLoggingSettingsAudioRecordingConfig? audioRecordingConfig;

  /// Settings to describe the BigQuery export behaviors for the app.
  /// Structure is documented below.
  final AppLoggingSettingsBigqueryExportSettings? bigqueryExportSettings;

  /// Settings to describe the Cloud Logging behaviors for the app.
  /// Structure is documented below.
  final AppLoggingSettingsCloudLoggingSettings? cloudLoggingSettings;

  /// Settings to describe the conversation logging behaviors for the app.
  /// Structure is documented below.
  final AppLoggingSettingsConversationLoggingSettings?
      conversationLoggingSettings;

  /// Configuration to instruct how sensitive data should be handled.
  /// Structure is documented below.
  final AppLoggingSettingsRedactionConfig? redactionConfig;

  /// Creates a new [AppLoggingSettings].
  /// [audioRecordingConfig] Configuration for how the audio interactions should be recorded.
  /// [bigqueryExportSettings] Settings to describe the BigQuery export behaviors for the app.
  /// [cloudLoggingSettings] Settings to describe the Cloud Logging behaviors for the app.
  /// [conversationLoggingSettings] Settings to describe the conversation logging behaviors for the app.
  /// [redactionConfig] Configuration to instruct how sensitive data should be handled.
  AppLoggingSettings({
    this.audioRecordingConfig,
    this.bigqueryExportSettings,
    this.cloudLoggingSettings,
    this.conversationLoggingSettings,
    this.redactionConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioRecordingConfigValue = audioRecordingConfig;
    if (audioRecordingConfigValue != null) {
      map['audioRecordingConfig'] = audioRecordingConfigValue.toMap();
    }
    final bigqueryExportSettingsValue = bigqueryExportSettings;
    if (bigqueryExportSettingsValue != null) {
      map['bigqueryExportSettings'] = bigqueryExportSettingsValue.toMap();
    }
    final cloudLoggingSettingsValue = cloudLoggingSettings;
    if (cloudLoggingSettingsValue != null) {
      map['cloudLoggingSettings'] = cloudLoggingSettingsValue.toMap();
    }
    final conversationLoggingSettingsValue = conversationLoggingSettings;
    if (conversationLoggingSettingsValue != null) {
      map['conversationLoggingSettings'] =
          conversationLoggingSettingsValue.toMap();
    }
    final redactionConfigValue = redactionConfig;
    if (redactionConfigValue != null) {
      map['redactionConfig'] = redactionConfigValue.toMap();
    }
    return map;
  }

  factory AppLoggingSettings.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettings(
      audioRecordingConfig: map['audioRecordingConfig'] == null
          ? null
          : AppLoggingSettingsAudioRecordingConfig.fromMap(
              (map['audioRecordingConfig'] as Map).cast<String, dynamic>()),
      bigqueryExportSettings: map['bigqueryExportSettings'] == null
          ? null
          : AppLoggingSettingsBigqueryExportSettings.fromMap(
              (map['bigqueryExportSettings'] as Map).cast<String, dynamic>()),
      cloudLoggingSettings: map['cloudLoggingSettings'] == null
          ? null
          : AppLoggingSettingsCloudLoggingSettings.fromMap(
              (map['cloudLoggingSettings'] as Map).cast<String, dynamic>()),
      conversationLoggingSettings: map['conversationLoggingSettings'] == null
          ? null
          : AppLoggingSettingsConversationLoggingSettings.fromMap(
              (map['conversationLoggingSettings'] as Map)
                  .cast<String, dynamic>()),
      redactionConfig: map['redactionConfig'] == null
          ? null
          : AppLoggingSettingsRedactionConfig.fromMap(
              (map['redactionConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
