/// Required. Audio encoding of the synthesized audio content.
enum GoogleCloudDialogflowV2beta1TextToSpeechSettingsOutputAudioEncoding {
  outputAudioEncodingUnspecified("OUTPUT_AUDIO_ENCODING_UNSPECIFIED"),
  outputAudioEncodingLinear16("OUTPUT_AUDIO_ENCODING_LINEAR_16"),
  outputAudioEncodingMp3("OUTPUT_AUDIO_ENCODING_MP3"),
  outputAudioEncodingMp364Kbps("OUTPUT_AUDIO_ENCODING_MP3_64_KBPS"),
  outputAudioEncodingOggOpus("OUTPUT_AUDIO_ENCODING_OGG_OPUS"),
  outputAudioEncodingMulaw("OUTPUT_AUDIO_ENCODING_MULAW");

  const GoogleCloudDialogflowV2beta1TextToSpeechSettingsOutputAudioEncoding(
      this.value);
  final String value;

  static GoogleCloudDialogflowV2beta1TextToSpeechSettingsOutputAudioEncoding
      fromValue(String value) {
    for (final item
        in GoogleCloudDialogflowV2beta1TextToSpeechSettingsOutputAudioEncoding
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowV2beta1TextToSpeechSettingsOutputAudioEncoding value: $value');
  }
}
