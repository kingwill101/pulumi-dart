// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings {
  final pulumi.Input<String> cbetCheckDigitString;
  /// Determines the method of CBET insertion mode when prior encoding is detected on the same layer.
  final pulumi.Input<String> cbetStepaside;
  /// CBET source ID to use in the watermark.
  final pulumi.Input<String> csid;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings].
  /// [cbetCheckDigitString] Required.
  /// [cbetStepaside] Determines the method of CBET insertion mode when prior encoding is detected on the same layer.
  /// [csid] CBET source ID to use in the watermark.
  const ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings({
    required this.cbetCheckDigitString,
    required this.cbetStepaside,
    required this.csid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cbetCheckDigitString': cbetCheckDigitString,
      'cbetStepaside': cbetStepaside,
      'csid': csid,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings(
      cbetCheckDigitString: pulumi.Input.fromValue(map['cbetCheckDigitString'] as String),
      cbetStepaside: pulumi.Input.fromValue(map['cbetStepaside'] as String),
      csid: pulumi.Input.fromValue(map['csid'] as String),
    );
  }
}
