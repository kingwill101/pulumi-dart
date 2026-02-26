// ignore_for_file: unused_element, unnecessary_cast

class PresetAudio {
  /// The method of organizing audio channels and tracks. Use Audio:Channels to specify the number of channels in your output, and Audio:AudioPackingMode to specify the number of tracks and their relation to the channels. If you do not specify an Audio:AudioPackingMode, Elastic Transcoder uses SingleTrack.
  final String? audioPackingMode;

  /// The bit rate of the audio stream in the output file, in kilobits/second. Enter an integer between 64 and 320, inclusive.
  final String? bitRate;

  /// The number of audio channels in the output file
  final String? channels;

  /// The audio codec for the output file. Valid values are `AAC`, <span pulumi-lang-nodejs="`flac`" pulumi-lang-dotnet="`Flac`" pulumi-lang-go="`flac`" pulumi-lang-python="`flac`" pulumi-lang-yaml="`flac`" pulumi-lang-java="`flac`">`flac`</span>, <span pulumi-lang-nodejs="`mp2`" pulumi-lang-dotnet="`Mp2`" pulumi-lang-go="`mp2`" pulumi-lang-python="`mp2`" pulumi-lang-yaml="`mp2`" pulumi-lang-java="`mp2`">`mp2`</span>, <span pulumi-lang-nodejs="`mp3`" pulumi-lang-dotnet="`Mp3`" pulumi-lang-go="`mp3`" pulumi-lang-python="`mp3`" pulumi-lang-yaml="`mp3`" pulumi-lang-java="`mp3`">`mp3`</span>, <span pulumi-lang-nodejs="`pcm`" pulumi-lang-dotnet="`Pcm`" pulumi-lang-go="`pcm`" pulumi-lang-python="`pcm`" pulumi-lang-yaml="`pcm`" pulumi-lang-java="`pcm`">`pcm`</span>, and <span pulumi-lang-nodejs="`vorbis`" pulumi-lang-dotnet="`Vorbis`" pulumi-lang-go="`vorbis`" pulumi-lang-python="`vorbis`" pulumi-lang-yaml="`vorbis`" pulumi-lang-java="`vorbis`">`vorbis`</span>.
  final String? codec;

  /// The sample rate of the audio stream in the output file, in hertz. Valid values are: <span pulumi-lang-nodejs="`auto`" pulumi-lang-dotnet="`Auto`" pulumi-lang-go="`auto`" pulumi-lang-python="`auto`" pulumi-lang-yaml="`auto`" pulumi-lang-java="`auto`">`auto`</span>, <span pulumi-lang-nodejs="`22050`" pulumi-lang-dotnet="`22050`" pulumi-lang-go="`22050`" pulumi-lang-python="`22050`" pulumi-lang-yaml="`22050`" pulumi-lang-java="`22050`">`22050`</span>, <span pulumi-lang-nodejs="`32000`" pulumi-lang-dotnet="`32000`" pulumi-lang-go="`32000`" pulumi-lang-python="`32000`" pulumi-lang-yaml="`32000`" pulumi-lang-java="`32000`">`32000`</span>, <span pulumi-lang-nodejs="`44100`" pulumi-lang-dotnet="`44100`" pulumi-lang-go="`44100`" pulumi-lang-python="`44100`" pulumi-lang-yaml="`44100`" pulumi-lang-java="`44100`">`44100`</span>, <span pulumi-lang-nodejs="`48000`" pulumi-lang-dotnet="`48000`" pulumi-lang-go="`48000`" pulumi-lang-python="`48000`" pulumi-lang-yaml="`48000`" pulumi-lang-java="`48000`">`48000`</span>, <span pulumi-lang-nodejs="`96000`" pulumi-lang-dotnet="`96000`" pulumi-lang-go="`96000`" pulumi-lang-python="`96000`" pulumi-lang-yaml="`96000`" pulumi-lang-java="`96000`">`96000`</span>
  final String? sampleRate;

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
