// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings {
  final double? bitrate;
  final String? codingMode;

  /// Sample rate in Hz.
  final double? sampleRate;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings].
  /// [bitrate] Optional.
  /// [codingMode] Optional.
  /// [sampleRate] Sample rate in Hz.
  ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings({
    this.bitrate,
    this.codingMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitrate': ?bitrate,
      'codingMode': ?codingMode,
      'sampleRate': ?sampleRate,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings(
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as double,
      codingMode: map['codingMode'] == null
          ? null
          : map['codingMode'] as String,
      sampleRate: map['sampleRate'] == null
          ? null
          : map['sampleRate'] as double,
    );
  }
}
