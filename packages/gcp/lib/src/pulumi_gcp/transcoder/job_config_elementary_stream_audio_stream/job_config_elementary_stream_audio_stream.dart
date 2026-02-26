// ignore_for_file: unused_element, unnecessary_cast

class JobConfigElementaryStreamAudioStream {
  /// Audio bitrate in bits per second.
  final int bitrateBps;

  /// Number of audio channels. The default is <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>.
  final int? channelCount;

  /// A list of channel names specifying layout of the audio channels. The default is ["fl", "fr"].
  final List<String>? channelLayouts;

  /// The codec for this audio stream. The default is <span pulumi-lang-nodejs="`aac`" pulumi-lang-dotnet="`Aac`" pulumi-lang-go="`aac`" pulumi-lang-python="`aac`" pulumi-lang-yaml="`aac`" pulumi-lang-java="`aac`">`aac`</span>.
  final String? codec;

  /// The audio sample rate in Hertz. The default is <span pulumi-lang-nodejs="`48000`" pulumi-lang-dotnet="`48000`" pulumi-lang-go="`48000`" pulumi-lang-python="`48000`" pulumi-lang-yaml="`48000`" pulumi-lang-java="`48000`">`48000`</span>.
  final int? sampleRateHertz;

  JobConfigElementaryStreamAudioStream({
    required this.bitrateBps,
    this.channelCount,
    this.channelLayouts,
    this.codec,
    this.sampleRateHertz,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bitrateBps'] = bitrateBps;
    final channelCountValue = channelCount;
    if (channelCountValue != null) {
      map['channelCount'] = channelCountValue;
    }
    final channelLayoutsValue = channelLayouts;
    if (channelLayoutsValue != null) {
      map['channelLayouts'] = channelLayoutsValue;
    }
    final codecValue = codec;
    if (codecValue != null) {
      map['codec'] = codecValue;
    }
    final sampleRateHertzValue = sampleRateHertz;
    if (sampleRateHertzValue != null) {
      map['sampleRateHertz'] = sampleRateHertzValue;
    }
    return map;
  }

  factory JobConfigElementaryStreamAudioStream.fromMap(
      Map<String, dynamic> map) {
    return JobConfigElementaryStreamAudioStream(
      bitrateBps: map['bitrateBps'] as int,
      channelCount:
          map['channelCount'] == null ? null : map['channelCount'] as int,
      channelLayouts: map['channelLayouts'] == null
          ? null
          : (map['channelLayouts'] as List).cast<String>(),
      codec: map['codec'] == null ? null : map['codec'] as String,
      sampleRateHertz:
          map['sampleRateHertz'] == null ? null : map['sampleRateHertz'] as int,
    );
  }
}
