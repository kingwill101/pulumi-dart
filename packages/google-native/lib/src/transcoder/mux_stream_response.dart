// ignore_for_file: unused_element, unnecessary_cast

import 'fmp4_config_response.dart';
import 'segment_settings_response.dart';

/// Multiplexing settings for output stream.
class MuxStreamResponse {
  /// The container format. The default is `mp4` Supported container formats: - `ts` - `fmp4`- the corresponding file extension is `.m4s` - `mp4` - `vtt` See also: [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats)
  final String container;

  /// List of ElementaryStream.key values multiplexed in this stream.
  final List<String> elementaryStreams;

  /// Identifier of the encryption configuration to use. If omitted, output will be unencrypted.
  final String encryptionId;

  /// The name of the generated file. The default is MuxStream.key with the extension suffix corresponding to the MuxStream.container. Individual segments also have an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `mux_stream0000000123.ts`.
  final String fileName;

  /// Optional. `fmp4` container configuration.
  final Fmp4ConfigResponse fmp4;

  /// A unique key for this multiplexed stream.
  final String key;

  /// Segment settings for `ts`, `fmp4` and `vtt`.
  final SegmentSettingsResponse segmentSettings;

  /// Creates a new [MuxStreamResponse].
  /// [container] The container format. The default is `mp4` Supported container formats: - `ts` - `fmp4`- the corresponding file extension is `.m4s` - `mp4` - `vtt` See also: [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats)
  /// [elementaryStreams] List of ElementaryStream.key values multiplexed in this stream.
  /// [encryptionId] Identifier of the encryption configuration to use. If omitted, output will be unencrypted.
  /// [fileName] The name of the generated file. The default is MuxStream.key with the extension suffix corresponding to the MuxStream.container. Individual segments also have an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `mux_stream0000000123.ts`.
  /// [fmp4] Optional. `fmp4` container configuration.
  /// [key] A unique key for this multiplexed stream.
  /// [segmentSettings] Segment settings for `ts`, `fmp4` and `vtt`.
  MuxStreamResponse({
    required this.container,
    required this.elementaryStreams,
    required this.encryptionId,
    required this.fileName,
    required this.fmp4,
    required this.key,
    required this.segmentSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'elementaryStreams': elementaryStreams,
      'encryptionId': encryptionId,
      'fileName': fileName,
      'fmp4': fmp4.toMap(),
      'key': key,
      'segmentSettings': segmentSettings.toMap(),
    };
  }

  factory MuxStreamResponse.fromMap(Map<String, dynamic> map) {
    return MuxStreamResponse(
      container: map['container'] as String,
      elementaryStreams: (map['elementaryStreams'] as List).cast<String>(),
      encryptionId: map['encryptionId'] as String,
      fileName: map['fileName'] as String,
      fmp4: Fmp4ConfigResponse.fromMap(
        (map['fmp4'] as Map).cast<String, dynamic>(),
      ),
      key: map['key'] as String,
      segmentSettings: SegmentSettingsResponse.fromMap(
        (map['segmentSettings'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
