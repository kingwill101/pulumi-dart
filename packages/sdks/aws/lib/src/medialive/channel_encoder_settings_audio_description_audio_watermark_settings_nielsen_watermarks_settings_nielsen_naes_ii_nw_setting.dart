// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting {
  /// Check digit string for the watermark.
  final pulumi.Input<String> checkDigitString;
  /// Nielsen source ID to include in the watermark.
  final pulumi.Input<double> sid;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting].
  /// [checkDigitString] Check digit string for the watermark.
  /// [sid] Nielsen source ID to include in the watermark.
  const ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting({
    required this.checkDigitString,
    required this.sid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkDigitString': checkDigitString,
      'sid': sid,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting(
      checkDigitString: pulumi.Input.fromValue(map['checkDigitString'] as String),
      sid: pulumi.Input.fromValue((map['sid'] as num).toDouble()),
    );
  }
}
