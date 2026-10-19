// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_caption_description_destination_settings_burn_in_destination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_dvb_sub_destination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_ebu_tt_ddestination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_ttml_destination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_webvtt_destination_settings.dart';

class ChannelEncoderSettingsCaptionDescriptionDestinationSettings {
  /// ARIB destination settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? aribDestinationSettings;
  /// Burn-in destination settings. See `burnInDestinationSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings?>? burnInDestinationSettings;
  /// DVB Sub destination settings. See `dvbSubDestinationSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings?>? dvbSubDestinationSettings;
  /// EBU TT D destination settings. See `ebuTtDDestinationSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings?>? ebuTtDDestinationSettings;
  /// Embedded destination settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? embeddedDestinationSettings;
  /// Embedded Plus SCTE-20 destination settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? embeddedPlusScte20DestinationSettings;
  /// RTMP caption info destination settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? rtmpCaptionInfoDestinationSettings;
  /// SCTE-20 Plus Embedded destination settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? scte20PlusEmbeddedDestinationSettings;
  /// SCTE-27 destination settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? scte27DestinationSettings;
  /// SMPTE TT destination settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? smpteTtDestinationSettings;
  /// Teletext destination settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? teletextDestinationSettings;
  /// TTML destination settings. See `ttmlDestinationSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings?>? ttmlDestinationSettings;
  /// WebVTT destination settings. See `webvttDestinationSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings?>? webvttDestinationSettings;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettings].
  /// [aribDestinationSettings] ARIB destination settings. Can be set as an empty block.
  /// [burnInDestinationSettings] Burn-in destination settings. See `burnInDestinationSettings` Block for details.
  /// [dvbSubDestinationSettings] DVB Sub destination settings. See `dvbSubDestinationSettings` Block for details.
  /// [ebuTtDDestinationSettings] EBU TT D destination settings. See `ebuTtDDestinationSettings` Block for details.
  /// [embeddedDestinationSettings] Embedded destination settings. Can be set as an empty block.
  /// [embeddedPlusScte20DestinationSettings] Embedded Plus SCTE-20 destination settings. Can be set as an empty block.
  /// [rtmpCaptionInfoDestinationSettings] RTMP caption info destination settings. Can be set as an empty block.
  /// [scte20PlusEmbeddedDestinationSettings] SCTE-20 Plus Embedded destination settings. Can be set as an empty block.
  /// [scte27DestinationSettings] SCTE-27 destination settings. Can be set as an empty block.
  /// [smpteTtDestinationSettings] SMPTE TT destination settings. Can be set as an empty block.
  /// [teletextDestinationSettings] Teletext destination settings. Can be set as an empty block.
  /// [ttmlDestinationSettings] TTML destination settings. See `ttmlDestinationSettings` Block for details.
  /// [webvttDestinationSettings] WebVTT destination settings. See `webvttDestinationSettings` Block for details.
  const ChannelEncoderSettingsCaptionDescriptionDestinationSettings({
    this.aribDestinationSettings,
    this.burnInDestinationSettings,
    this.dvbSubDestinationSettings,
    this.ebuTtDDestinationSettings,
    this.embeddedDestinationSettings,
    this.embeddedPlusScte20DestinationSettings,
    this.rtmpCaptionInfoDestinationSettings,
    this.scte20PlusEmbeddedDestinationSettings,
    this.scte27DestinationSettings,
    this.smpteTtDestinationSettings,
    this.teletextDestinationSettings,
    this.ttmlDestinationSettings,
    this.webvttDestinationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aribDestinationSettings': ?aribDestinationSettings,
      'burnInDestinationSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings, Map<String, dynamic>>(burnInDestinationSettings, (value) => value.toMap()),
      'dvbSubDestinationSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings, Map<String, dynamic>>(dvbSubDestinationSettings, (value) => value.toMap()),
      'ebuTtDDestinationSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings, Map<String, dynamic>>(ebuTtDDestinationSettings, (value) => value.toMap()),
      'embeddedDestinationSettings': ?embeddedDestinationSettings,
      'embeddedPlusScte20DestinationSettings': ?embeddedPlusScte20DestinationSettings,
      'rtmpCaptionInfoDestinationSettings': ?rtmpCaptionInfoDestinationSettings,
      'scte20PlusEmbeddedDestinationSettings': ?scte20PlusEmbeddedDestinationSettings,
      'scte27DestinationSettings': ?scte27DestinationSettings,
      'smpteTtDestinationSettings': ?smpteTtDestinationSettings,
      'teletextDestinationSettings': ?teletextDestinationSettings,
      'ttmlDestinationSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings, Map<String, dynamic>>(ttmlDestinationSettings, (value) => value.toMap()),
      'webvttDestinationSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings, Map<String, dynamic>>(webvttDestinationSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettings(
      aribDestinationSettings: (() { final guardedValue = map['aribDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      burnInDestinationSettings: (() { final guardedValue = map['burnInDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dvbSubDestinationSettings: (() { final guardedValue = map['dvbSubDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ebuTtDDestinationSettings: (() { final guardedValue = map['ebuTtDDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      embeddedDestinationSettings: (() { final guardedValue = map['embeddedDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      embeddedPlusScte20DestinationSettings: (() { final guardedValue = map['embeddedPlusScte20DestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      rtmpCaptionInfoDestinationSettings: (() { final guardedValue = map['rtmpCaptionInfoDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      scte20PlusEmbeddedDestinationSettings: (() { final guardedValue = map['scte20PlusEmbeddedDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      scte27DestinationSettings: (() { final guardedValue = map['scte27DestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      smpteTtDestinationSettings: (() { final guardedValue = map['smpteTtDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      teletextDestinationSettings: (() { final guardedValue = map['teletextDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      ttmlDestinationSettings: (() { final guardedValue = map['ttmlDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webvttDestinationSettings: (() { final guardedValue = map['webvttDestinationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
