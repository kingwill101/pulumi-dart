/// Required. Audio encoding of the audio content to process.
enum GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding {
  audioEncodingUnspecified("AUDIO_ENCODING_UNSPECIFIED"),
  audioEncodingLinear16("AUDIO_ENCODING_LINEAR_16"),
  audioEncodingFlac("AUDIO_ENCODING_FLAC"),
  audioEncodingMulaw("AUDIO_ENCODING_MULAW"),
  audioEncodingAmr("AUDIO_ENCODING_AMR"),
  audioEncodingAmrWb("AUDIO_ENCODING_AMR_WB"),
  audioEncodingOggOpus("AUDIO_ENCODING_OGG_OPUS"),
  audioEncodingSpeexWithHeaderByte("AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE");

  const GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding fromValue(
      String value) {
    for (final item
        in GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowCxV3InputAudioConfigAudioEncoding value: $value');
  }
}
