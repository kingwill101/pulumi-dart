// ignore_for_file: unused_element, unnecessary_cast

class PresetAudio {
  /// The method of organizing audio channels and tracks. Use Audio:Channels to specify the number of channels in your output, and Audio:AudioPackingMode to specify the number of tracks and their relation to the channels. If you do not specify an Audio:AudioPackingMode, Elastic Transcoder uses SingleTrack.
  final String? audioPackingMode;

  /// The bit rate of the audio stream in the output file, in kilobits/second. Enter an integer between 64 and 320, inclusive.
  final String? bitRate;

  /// The number of audio channels in the output file
  final String? channels;

  /// The audio codec for the output file. Valid values are `AAC`, `flac`, `mp2`, `mp3`, `pcm`, and `vorbis`.
  final String? codec;

  /// The sample rate of the audio stream in the output file, in hertz. Valid values are: `auto`, `22050`, `32000`, `44100`, `48000`, `96000`
  final String? sampleRate;

  /// Creates a new [PresetAudio].
  /// [audioPackingMode] The method of organizing audio channels and tracks. Use Audio:Channels to specify the number of channels in your output, and Audio:AudioPackingMode to specify the number of tracks and their relation to the channels. If you do not specify an Audio:AudioPackingMode, Elastic Transcoder uses SingleTrack.
  /// [bitRate] The bit rate of the audio stream in the output file, in kilobits/second. Enter an integer between 64 and 320, inclusive.
  /// [channels] The number of audio channels in the output file
  /// [codec] The audio codec for the output file. Valid values are `AAC`, `flac`, `mp2`, `mp3`, `pcm`, and `vorbis`.
  /// [sampleRate] The sample rate of the audio stream in the output file, in hertz. Valid values are: `auto`, `22050`, `32000`, `44100`, `48000`, `96000`
  PresetAudio({
    this.audioPackingMode,
    this.bitRate,
    this.channels,
    this.codec,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioPackingModeValue = audioPackingMode;
    if (audioPackingModeValue != null) {
      map['audioPackingMode'] = audioPackingModeValue;
    }
    final bitRateValue = bitRate;
    if (bitRateValue != null) {
      map['bitRate'] = bitRateValue;
    }
    final channelsValue = channels;
    if (channelsValue != null) {
      map['channels'] = channelsValue;
    }
    final codecValue = codec;
    if (codecValue != null) {
      map['codec'] = codecValue;
    }
    final sampleRateValue = sampleRate;
    if (sampleRateValue != null) {
      map['sampleRate'] = sampleRateValue;
    }
    return map;
  }

  factory PresetAudio.fromMap(Map<String, dynamic> map) {
    return PresetAudio(
      audioPackingMode: map['audioPackingMode'] == null
          ? null
          : map['audioPackingMode'] as String,
      bitRate: map['bitRate'] == null ? null : map['bitRate'] as String,
      channels: map['channels'] == null ? null : map['channels'] as String,
      codec: map['codec'] == null ? null : map['codec'] as String,
      sampleRate:
          map['sampleRate'] == null ? null : map['sampleRate'] as String,
    );
  }
}
