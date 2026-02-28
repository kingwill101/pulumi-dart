// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_input_audio_config_response.dart';

/// Represents the natural speech audio to be processed.
class GoogleCloudDialogflowCxV3beta1AudioInputResponse {
  /// The natural language speech audio to be processed. A single request can contain up to 2 minutes of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.
  final String audio;

  /// Instructs the speech recognizer how to process the speech audio.
  final GoogleCloudDialogflowCxV3beta1InputAudioConfigResponse config;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AudioInputResponse].
  /// [audio] The natural language speech audio to be processed. A single request can contain up to 2 minutes of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.
  /// [config] Instructs the speech recognizer how to process the speech audio.
  GoogleCloudDialogflowCxV3beta1AudioInputResponse({
    required this.audio,
    required this.config,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audio'] = audio;
    map['config'] = config.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1AudioInputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AudioInputResponse(
      audio: map['audio'] as String,
      config: GoogleCloudDialogflowCxV3beta1InputAudioConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
    );
  }
}
