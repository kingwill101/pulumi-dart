// ignore_for_file: unused_element, unnecessary_cast

import 'preprocessing_config_response.dart';

/// Input asset.
class InputResponse {
  /// A unique key for this input. Must be specified when using advanced mapping and edit lists.
  final String key;

  /// Preprocessing configurations.
  final PreprocessingConfigResponse preprocessingConfig;

  /// URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). If empty, the value is populated from Job.input_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final String uri;

  InputResponse({
    required this.key,
    required this.preprocessingConfig,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['preprocessingConfig'] = preprocessingConfig.toMap();
    map['uri'] = uri;
    return map;
  }

  factory InputResponse.fromMap(Map<String, dynamic> map) {
    return InputResponse(
      key: map['key'] as String,
      preprocessingConfig: PreprocessingConfigResponse.fromMap(
          (map['preprocessingConfig'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}
