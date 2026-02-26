// ignore_for_file: unused_element, unnecessary_cast

/// Settings for exporting audio.
class GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse {
  /// Filename pattern for exported audio.
  final String audioExportPattern;

  /// File format for exported audio file. Currently only in telephony recordings.
  final String audioFormat;

  /// Enable audio redaction if it is true.
  final bool enableAudioRedaction;

  /// Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  final String gcsBucket;

  GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse({
    required this.audioExportPattern,
    required this.audioFormat,
    required this.enableAudioRedaction,
    required this.gcsBucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audioExportPattern'] = audioExportPattern;
    map['audioFormat'] = audioFormat;
    map['enableAudioRedaction'] = enableAudioRedaction;
    map['gcsBucket'] = gcsBucket;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettingsResponse(
      audioExportPattern: map['audioExportPattern'] as String,
      audioFormat: map['audioFormat'] as String,
      enableAudioRedaction: map['enableAudioRedaction'] as bool,
      gcsBucket: map['gcsBucket'] as String,
    );
  }
}
