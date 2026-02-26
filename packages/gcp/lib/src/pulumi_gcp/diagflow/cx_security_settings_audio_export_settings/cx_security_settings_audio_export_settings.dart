// ignore_for_file: unused_element, unnecessary_cast

class CxSecuritySettingsAudioExportSettings {
  /// Filename pattern for exported audio.
  final String? audioExportPattern;

  /// File format for exported audio file. Currently only in telephony recordings.
  /// * MULAW: G.711 mu-law PCM with 8kHz sample rate.
  /// * MP3: MP3 file format.
  /// * OGG: OGG Vorbis.
  /// Possible values are: `MULAW`, `MP3`, `OGG`.
  final String? audioFormat;

  /// Enable audio redaction if it is true.
  final bool? enableAudioRedaction;

  /// Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.
  final String? gcsBucket;

  CxSecuritySettingsAudioExportSettings({
    this.audioExportPattern,
    this.audioFormat,
    this.enableAudioRedaction,
    this.gcsBucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioExportPatternValue = audioExportPattern;
    if (audioExportPatternValue != null) {
      map['audioExportPattern'] = audioExportPatternValue;
    }
    final audioFormatValue = audioFormat;
    if (audioFormatValue != null) {
      map['audioFormat'] = audioFormatValue;
    }
    final enableAudioRedactionValue = enableAudioRedaction;
    if (enableAudioRedactionValue != null) {
      map['enableAudioRedaction'] = enableAudioRedactionValue;
    }
    final gcsBucketValue = gcsBucket;
    if (gcsBucketValue != null) {
      map['gcsBucket'] = gcsBucketValue;
    }
    return map;
  }

  factory CxSecuritySettingsAudioExportSettings.fromMap(
      Map<String, dynamic> map) {
    return CxSecuritySettingsAudioExportSettings(
      audioExportPattern: map['audioExportPattern'] == null
          ? null
          : map['audioExportPattern'] as String,
      audioFormat:
          map['audioFormat'] == null ? null : map['audioFormat'] as String,
      enableAudioRedaction: map['enableAudioRedaction'] == null
          ? null
          : map['enableAudioRedaction'] as bool,
      gcsBucket: map['gcsBucket'] == null ? null : map['gcsBucket'] as String,
    );
  }
}
