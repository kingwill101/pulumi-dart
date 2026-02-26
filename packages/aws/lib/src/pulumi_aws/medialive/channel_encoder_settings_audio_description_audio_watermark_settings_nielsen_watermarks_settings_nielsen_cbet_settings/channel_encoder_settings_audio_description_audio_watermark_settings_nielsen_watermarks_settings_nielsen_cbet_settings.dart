// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings {
  final String cbetCheckDigitString;

  /// Determines the method of CBET insertion mode when prior encoding is detected on the same layer.
  final String cbetStepaside;

  /// CBET source ID to use in the watermark.
  final String csid;

  ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings({
    required this.cbetCheckDigitString,
    required this.cbetStepaside,
    required this.csid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cbetCheckDigitString'] = cbetCheckDigitString;
    map['cbetStepaside'] = cbetStepaside;
    map['csid'] = csid;
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings(
      cbetCheckDigitString: map['cbetCheckDigitString'] as String,
      cbetStepaside: map['cbetStepaside'] as String,
      csid: map['csid'] as String,
    );
  }
}
