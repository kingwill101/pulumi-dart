// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings {
  final double? bitDepth;
  final String? codingMode;

  /// Sample rate in Hz.
  final double? sampleRate;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings].
  /// [bitDepth] Optional.
  /// [codingMode] Optional.
  /// [sampleRate] Sample rate in Hz.
  ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings({
    this.bitDepth,
    this.codingMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitDepth': ?bitDepth,
      'codingMode': ?codingMode,
      'sampleRate': ?sampleRate,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsWavSettings(
      bitDepth: map['bitDepth'] == null ? null : map['bitDepth'] as double,
      codingMode: map['codingMode'] == null
          ? null
          : map['codingMode'] as String,
      sampleRate: map['sampleRate'] == null
          ? null
          : map['sampleRate'] as double,
    );
  }
}
