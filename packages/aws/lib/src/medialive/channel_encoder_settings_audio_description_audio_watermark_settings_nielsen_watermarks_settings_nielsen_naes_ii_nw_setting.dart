// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting {
  final String checkDigitString;

  /// The Nielsen Source ID to include in the watermark.
  final double sid;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting].
  /// [checkDigitString] Required.
  /// [sid] The Nielsen Source ID to include in the watermark.
  ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting({
    required this.checkDigitString,
    required this.sid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkDigitString'] = checkDigitString;
    map['sid'] = sid;
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting(
      checkDigitString: map['checkDigitString'] as String,
      sid: map['sid'] as double,
    );
  }
}
