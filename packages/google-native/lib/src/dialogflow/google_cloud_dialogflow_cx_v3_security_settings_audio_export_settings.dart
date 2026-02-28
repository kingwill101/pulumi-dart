// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_security_settings_audio_export_settings_audio_format.dart';

/// Settings for exporting audio.
class GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings {
  /// Filename pattern for exported audio.
  final String? audioExportPattern;
  /// File format for exported audio file. Currently only in telephony recordings.
  final GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat? audioFormat;
  /// Enable audio redaction if it is true.
  final bool? enableAudioRedaction;
  /// Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  final String? gcsBucket;

  /// Creates a new [GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings].
  /// [audioExportPattern] Filename pattern for exported audio.
  /// [audioFormat] File format for exported audio file. Currently only in telephony recordings.
  /// [enableAudioRedaction] Enable audio redaction if it is true.
  /// [gcsBucket] Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings({
    this.audioExportPattern,
    this.audioFormat,
    this.enableAudioRedaction,
    this.gcsBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportPattern': ?audioExportPattern,
      'audioFormat': ?audioFormat == null ? null : audioFormat!.value,
      'enableAudioRedaction': ?enableAudioRedaction,
      'gcsBucket': ?gcsBucket,
    };
  }

  factory GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings(
      audioExportPattern: map['audioExportPattern'] == null ? null : map['audioExportPattern'] as String,
      audioFormat: map['audioFormat'] == null ? null : GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsAudioFormat.fromValue(map['audioFormat'] as String),
      enableAudioRedaction: map['enableAudioRedaction'] == null ? null : map['enableAudioRedaction'] as bool,
      gcsBucket: map['gcsBucket'] == null ? null : map['gcsBucket'] as String,
    );
  }
}

