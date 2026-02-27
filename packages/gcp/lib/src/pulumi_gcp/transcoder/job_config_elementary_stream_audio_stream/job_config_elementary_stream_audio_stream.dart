// ignore_for_file: unused_element, unnecessary_cast

class JobConfigElementaryStreamAudioStream {
  /// Audio bitrate in bits per second.
  final int bitrateBps;

  /// Number of audio channels. The default is `2`.
  final int? channelCount;

  /// A list of channel names specifying layout of the audio channels. The default is ["fl", "fr"].
  final List<String>? channelLayouts;

  /// The codec for this audio stream. The default is `aac`.
  final String? codec;

  /// The audio sample rate in Hertz. The default is `48000`.
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
