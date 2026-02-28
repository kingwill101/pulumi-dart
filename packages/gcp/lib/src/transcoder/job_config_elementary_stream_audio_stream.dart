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

  /// Creates a new [JobConfigElementaryStreamAudioStream].
  /// [bitrateBps] Audio bitrate in bits per second.
  /// [channelCount] Number of audio channels. The default is `2`.
  /// [channelLayouts] A list of channel names specifying layout of the audio channels. The default is ["fl", "fr"].
  /// [codec] The codec for this audio stream. The default is `aac`.
  /// [sampleRateHertz] The audio sample rate in Hertz. The default is `48000`.
  JobConfigElementaryStreamAudioStream({
    required this.bitrateBps,
    this.channelCount,
    this.channelLayouts,
    this.codec,
    this.sampleRateHertz,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitrateBps': bitrateBps,
      'channelCount': ?channelCount,
      'channelLayouts': ?channelLayouts,
      'codec': ?codec,
      'sampleRateHertz': ?sampleRateHertz,
    };
  }

  factory JobConfigElementaryStreamAudioStream.fromMap(Map<String, dynamic> map) {
    return JobConfigElementaryStreamAudioStream(
      bitrateBps: map['bitrateBps'] as int,
      channelCount: map['channelCount'] == null ? null : map['channelCount'] as int,
      channelLayouts: map['channelLayouts'] == null ? null : (map['channelLayouts'] as List).cast<String>(),
      codec: map['codec'] == null ? null : map['codec'] as String,
      sampleRateHertz: map['sampleRateHertz'] == null ? null : map['sampleRateHertz'] as int,
    );
  }
}

