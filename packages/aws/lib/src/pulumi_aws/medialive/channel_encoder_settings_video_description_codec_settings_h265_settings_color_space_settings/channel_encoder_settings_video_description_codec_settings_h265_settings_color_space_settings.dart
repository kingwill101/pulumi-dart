// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_video_description_codec_settings_h265_settings_color_space_settings_hdr10_settings/channel_encoder_settings_video_description_codec_settings_h265_settings_color_space_settings_hdr10_settings.dart';

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings {
  /// Sets the colorspace metadata to be passed through.
  final Map<String, dynamic>? colorSpacePassthroughSettings;

  /// Set the colorspace to Dolby Vision81.
  final Map<String, dynamic>? dolbyVision81Settings;

  /// Set the colorspace to be HDR10. See H265 HDR10 Settings for more details.
  final ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings?
      hdr10Settings;

  /// Set the colorspace to Rec. 601.
  final Map<String, dynamic>? rec601Settings;

  /// Set the colorspace to Rec. 709.
  final Map<String, dynamic>? rec709Settings;

  ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings({
    this.colorSpacePassthroughSettings,
    this.dolbyVision81Settings,
    this.hdr10Settings,
    this.rec601Settings,
    this.rec709Settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final colorSpacePassthroughSettingsValue = colorSpacePassthroughSettings;
    if (colorSpacePassthroughSettingsValue != null) {
      map['colorSpacePassthroughSettings'] = colorSpacePassthroughSettingsValue;
    }
    final dolbyVision81SettingsValue = dolbyVision81Settings;
    if (dolbyVision81SettingsValue != null) {
      map['dolbyVision81Settings'] = dolbyVision81SettingsValue;
    }
    final hdr10SettingsValue = hdr10Settings;
    if (hdr10SettingsValue != null) {
      map['hdr10Settings'] = hdr10SettingsValue.toMap();
    }
    final rec601SettingsValue = rec601Settings;
    if (rec601SettingsValue != null) {
      map['rec601Settings'] = rec601SettingsValue;
    }
    final rec709SettingsValue = rec709Settings;
    if (rec709SettingsValue != null) {
      map['rec709Settings'] = rec709SettingsValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettings(
      colorSpacePassthroughSettings:
          map['colorSpacePassthroughSettings'] == null
              ? null
              : (map['colorSpacePassthroughSettings'] as Map)
                  .cast<String, dynamic>(),
      dolbyVision81Settings: map['dolbyVision81Settings'] == null
          ? null
          : (map['dolbyVision81Settings'] as Map).cast<String, dynamic>(),
      hdr10Settings: map['hdr10Settings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsColorSpaceSettingsHdr10Settings
              .fromMap((map['hdr10Settings'] as Map).cast<String, dynamic>()),
      rec601Settings: map['rec601Settings'] == null
          ? null
          : (map['rec601Settings'] as Map).cast<String, dynamic>(),
      rec709Settings: map['rec709Settings'] == null
          ? null
          : (map['rec709Settings'] as Map).cast<String, dynamic>(),
    );
  }
}
