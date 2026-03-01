// ignore_for_file: unused_element, unnecessary_cast

/// Settings for exporting audio.
class GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsResponse {
  /// Filename pattern for exported audio.
  final String audioExportPattern;

  /// File format for exported audio file. Currently only in telephony recordings.
  final String audioFormat;

  /// Enable audio redaction if it is true.
  final bool enableAudioRedaction;

  /// Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  final String gcsBucket;

  /// Creates a new [GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsResponse].
  /// [audioExportPattern] Filename pattern for exported audio.
  /// [audioFormat] File format for exported audio file. Currently only in telephony recordings.
  /// [enableAudioRedaction] Enable audio redaction if it is true.
  /// [gcsBucket] Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsResponse({
    required this.audioExportPattern,
    required this.audioFormat,
    required this.enableAudioRedaction,
    required this.gcsBucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioExportPattern': audioExportPattern,
      'audioFormat': audioFormat,
      'enableAudioRedaction': enableAudioRedaction,
      'gcsBucket': gcsBucket,
    };
  }

  factory GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettingsResponse(
      audioExportPattern: map['audioExportPattern'] as String,
      audioFormat: map['audioFormat'] as String,
      enableAudioRedaction: map['enableAudioRedaction'] as bool,
      gcsBucket: map['gcsBucket'] as String,
    );
  }
}
