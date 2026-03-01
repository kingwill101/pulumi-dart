// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_audio_description_audio_watermark_settings_nielsen_watermarks_settings_nielsen_cbet_settings.dart';
import 'channel_encoder_settings_audio_description_audio_watermark_settings_nielsen_watermarks_settings_nielsen_naes_ii_nw_setting.dart';

class ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings {
  /// Used to insert watermarks of type Nielsen CBET. See Nielsen CBET Settings for more details.
  final ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings?
  nielsenCbetSettings;

  /// Distribution types to assign to the watermarks. Options are `PROGRAM_CONTENT` and `FINAL_DISTRIBUTOR`.
  final String? nielsenDistributionType;

  /// Used to insert watermarks of type Nielsen NAES, II (N2) and Nielsen NAES VI (NW). See Nielsen NAES II NW Settings for more details.
  final List<
    ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting
  >?
  nielsenNaesIiNwSettings;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings].
  /// [nielsenCbetSettings] Used to insert watermarks of type Nielsen CBET. See Nielsen CBET Settings for more details.
  /// [nielsenDistributionType] Distribution types to assign to the watermarks. Options are `PROGRAM_CONTENT` and `FINAL_DISTRIBUTOR`.
  /// [nielsenNaesIiNwSettings] Used to insert watermarks of type Nielsen NAES, II (N2) and Nielsen NAES VI (NW). See Nielsen NAES II NW Settings for more details.
  ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings({
    this.nielsenCbetSettings,
    this.nielsenDistributionType,
    this.nielsenNaesIiNwSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nielsenCbetSettings': ?nielsenCbetSettings == null
          ? null
          : nielsenCbetSettings!.toMap(),
      'nielsenDistributionType': ?nielsenDistributionType,
      'nielsenNaesIiNwSettings': ?nielsenNaesIiNwSettings == null
          ? null
          : pulumi.Input.encodeList<
              ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting,
              Map<String, dynamic>
            >(nielsenNaesIiNwSettings!, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettings(
      nielsenCbetSettings: map['nielsenCbetSettings'] == null
          ? null
          : ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenCbetSettings.fromMap(
              (map['nielsenCbetSettings'] as Map).cast<String, dynamic>(),
            ),
      nielsenDistributionType: map['nielsenDistributionType'] == null
          ? null
          : map['nielsenDistributionType'] as String,
      nielsenNaesIiNwSettings: map['nielsenNaesIiNwSettings'] == null
          ? null
          : pulumi.Input.decodeList<
              ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting
            >(
              map['nielsenNaesIiNwSettings'],
              (value) =>
                  ChannelEncoderSettingsAudioDescriptionAudioWatermarkSettingsNielsenWatermarksSettingsNielsenNaesIiNwSetting.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
