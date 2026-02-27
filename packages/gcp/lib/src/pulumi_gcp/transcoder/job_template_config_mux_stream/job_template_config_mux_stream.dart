// ignore_for_file: unused_element, unnecessary_cast

import '../job_template_config_mux_stream_segment_settings/job_template_config_mux_stream_segment_settings.dart';

class JobTemplateConfigMuxStream {
  /// The container format. The default is `mp4`.
  final String? container;

  /// List of ElementaryStream.key values multiplexed in this stream.
  final List<String>? elementaryStreams;

  /// Identifier of the encryption configuration to use.
  final String? encryptionId;

  /// The name of the generated file.
  final String? fileName;

  /// A unique key for this multiplexed stream.
  final String? key;

  /// Segment settings for ts, fmp4 and vtt.
  /// Structure is documented below.
  final JobTemplateConfigMuxStreamSegmentSettings? segmentSettings;

  JobTemplateConfigMuxStream({
    this.container,
    this.elementaryStreams,
    this.encryptionId,
    this.fileName,
    this.key,
    this.segmentSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerValue = container;
    if (containerValue != null) {
      map['container'] = containerValue;
    }
    final elementaryStreamsValue = elementaryStreams;
    if (elementaryStreamsValue != null) {
      map['elementaryStreams'] = elementaryStreamsValue;
    }
    final encryptionIdValue = encryptionId;
    if (encryptionIdValue != null) {
      map['encryptionId'] = encryptionIdValue;
    }
    final fileNameValue = fileName;
    if (fileNameValue != null) {
      map['fileName'] = fileNameValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final segmentSettingsValue = segmentSettings;
    if (segmentSettingsValue != null) {
      map['segmentSettings'] = segmentSettingsValue.toMap();
    }
    return map;
  }

  factory JobTemplateConfigMuxStream.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigMuxStream(
      container: map['container'] == null ? null : map['container'] as String,
      elementaryStreams: map['elementaryStreams'] == null
          ? null
          : (map['elementaryStreams'] as List).cast<String>(),
      encryptionId:
          map['encryptionId'] == null ? null : map['encryptionId'] as String,
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      segmentSettings: map['segmentSettings'] == null
          ? null
          : JobTemplateConfigMuxStreamSegmentSettings.fromMap(
              (map['segmentSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
