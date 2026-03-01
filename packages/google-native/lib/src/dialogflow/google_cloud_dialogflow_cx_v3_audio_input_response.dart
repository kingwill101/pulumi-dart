// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_input_audio_config_response.dart';

/// Represents the natural speech audio to be processed.
class GoogleCloudDialogflowCxV3AudioInputResponse {
  /// The natural language speech audio to be processed. A single request can contain up to 2 minutes of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.
  final String audio;

  /// Instructs the speech recognizer how to process the speech audio.
  final GoogleCloudDialogflowCxV3InputAudioConfigResponse config;

  /// Creates a new [GoogleCloudDialogflowCxV3AudioInputResponse].
  /// [audio] The natural language speech audio to be processed. A single request can contain up to 2 minutes of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.
  /// [config] Instructs the speech recognizer how to process the speech audio.
  GoogleCloudDialogflowCxV3AudioInputResponse({
    required this.audio,
    required this.config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'audio': audio, 'config': config.toMap()};
  }

  factory GoogleCloudDialogflowCxV3AudioInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3AudioInputResponse(
      audio: map['audio'] as String,
      config: GoogleCloudDialogflowCxV3InputAudioConfigResponse.fromMap(
        (map['config'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
