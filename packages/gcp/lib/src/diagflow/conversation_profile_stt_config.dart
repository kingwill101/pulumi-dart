// ignore_for_file: unused_element, unnecessary_cast


class ConversationProfileSttConfig {
  /// Audio encoding of the audio content to process.
  /// Possible values are: `AUDIO_ENCODING_UNSPECIFIED`, `AUDIO_ENCODING_LINEAR_16`, `AUDIO_ENCODING_FLAC`, `AUDIO_ENCODING_MULAW`, `AUDIO_ENCODING_AMR`, `AUDIO_ENCODING_AMR_WB`, `AUDIO_ENCODING_OGG_OPUS`, `AUDIOENCODING_SPEEX_WITH_HEADER_BYTE`.
  final String? audioEncoding;
  /// If true, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words.
  final bool? enableWordInfo;
  /// The language of the supplied audio.
  final String? languageCode;
  /// Which Speech model to select.
  /// Leave this field unspecified to use Agent Speech settings for model selection.
  final String? model;
  /// Sample rate (in Hertz) of the audio content sent in the query.
  final int? sampleRateHertz;
  /// The speech model used in speech to text.
  /// Possible values are: `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE`, `USE_STANDARD`, `USE_ENHANCED`.
  final String? speechModelVariant;
  /// Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  final bool? useTimeoutBasedEndpointing;

  /// Creates a new [ConversationProfileSttConfig].
  /// [audioEncoding] Audio encoding of the audio content to process.
  /// [enableWordInfo] If true, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words.
  /// [languageCode] The language of the supplied audio.
  /// [model] Which Speech model to select.
  /// [sampleRateHertz] Sample rate (in Hertz) of the audio content sent in the query.
  /// [speechModelVariant] The speech model used in speech to text.
  /// [useTimeoutBasedEndpointing] Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  ConversationProfileSttConfig({
    this.audioEncoding,
    this.enableWordInfo,
    this.languageCode,
    this.model,
    this.sampleRateHertz,
    this.speechModelVariant,
    this.useTimeoutBasedEndpointing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioEncoding': ?audioEncoding,
      'enableWordInfo': ?enableWordInfo,
      'languageCode': ?languageCode,
      'model': ?model,
      'sampleRateHertz': ?sampleRateHertz,
      'speechModelVariant': ?speechModelVariant,
      'useTimeoutBasedEndpointing': ?useTimeoutBasedEndpointing,
    };
  }

  factory ConversationProfileSttConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileSttConfig(
      audioEncoding: map['audioEncoding'] == null ? null : map['audioEncoding'] as String,
      enableWordInfo: map['enableWordInfo'] == null ? null : map['enableWordInfo'] as bool,
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      sampleRateHertz: map['sampleRateHertz'] == null ? null : map['sampleRateHertz'] as int,
      speechModelVariant: map['speechModelVariant'] == null ? null : map['speechModelVariant'] as String,
      useTimeoutBasedEndpointing: map['useTimeoutBasedEndpointing'] == null ? null : map['useTimeoutBasedEndpointing'] as bool,
    );
  }
}

