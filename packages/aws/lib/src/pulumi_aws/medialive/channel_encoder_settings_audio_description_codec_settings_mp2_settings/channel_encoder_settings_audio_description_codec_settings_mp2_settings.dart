// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings {
  final double? bitrate;
  final String? codingMode;

  /// Sample rate in Hz.
  final double? sampleRate;

  ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings({
    this.bitrate,
    this.codingMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bitrateValue = bitrate;
    if (bitrateValue != null) {
      map['bitrate'] = bitrateValue;
    }
    final codingModeValue = codingMode;
    if (codingModeValue != null) {
      map['codingMode'] = codingModeValue;
    }
    final sampleRateValue = sampleRate;
    if (sampleRateValue != null) {
      map['sampleRate'] = sampleRateValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsMp2Settings(
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as double,
      codingMode:
          map['codingMode'] == null ? null : map['codingMode'] as String,
      sampleRate:
          map['sampleRate'] == null ? null : map['sampleRate'] as double,
    );
  }
}
