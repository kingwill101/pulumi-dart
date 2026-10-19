// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_video_description_codec_settings_h265_settings_color_space_settings_hdr10_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings {
  /// Sets the colorspace metadata to be passed through. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? colorSpacePassthroughSettings;
  /// Sets the colorspace to Dolby Vision81. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? dolbyVision81Settings;
  /// Sets the colorspace to be HDR10. See `hdr10Settings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings?>? hdr10Settings;
  /// Sets the colorspace to Rec. 601. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? rec601Settings;
  /// Sets the colorspace to Rec. 709. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? rec709Settings;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings].
  /// [colorSpacePassthroughSettings] Sets the colorspace metadata to be passed through. Can be set as an empty block.
  /// [dolbyVision81Settings] Sets the colorspace to Dolby Vision81. Can be set as an empty block.
  /// [hdr10Settings] Sets the colorspace to be HDR10. See `hdr10Settings` Block for details.
  /// [rec601Settings] Sets the colorspace to Rec. 601. Can be set as an empty block.
  /// [rec709Settings] Sets the colorspace to Rec. 709. Can be set as an empty block.
  const ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings({
    this.colorSpacePassthroughSettings,
    this.dolbyVision81Settings,
    this.hdr10Settings,
    this.rec601Settings,
    this.rec709Settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colorSpacePassthroughSettings': ?colorSpacePassthroughSettings,
      'dolbyVision81Settings': ?dolbyVision81Settings,
      'hdr10Settings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings, Map<String, dynamic>>(hdr10Settings, (value) => value.toMap()),
      'rec601Settings': ?rec601Settings,
      'rec709Settings': ?rec709Settings,
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings(
      colorSpacePassthroughSettings: (() { final guardedValue = map['colorSpacePassthroughSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      dolbyVision81Settings: (() { final guardedValue = map['dolbyVision81Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      hdr10Settings: (() { final guardedValue = map['hdr10Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rec601Settings: (() { final guardedValue = map['rec601Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      rec709Settings: (() { final guardedValue = map['rec709Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
