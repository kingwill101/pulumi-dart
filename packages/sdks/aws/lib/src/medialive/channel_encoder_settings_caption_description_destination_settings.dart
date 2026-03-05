// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_caption_description_destination_settings_burn_in_destination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_dvb_sub_destination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_ebu_tt_ddestination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_ttml_destination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_webvtt_destination_settings.dart';

class ChannelEncoderSettingsCaptionDescriptionDestinationSettings {
  /// ARIB Destination Settings.
  final pulumi.Input<Map<String, dynamic>>? aribDestinationSettings;
  /// Burn In Destination Settings. See Burn In Destination Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings>? burnInDestinationSettings;
  /// DVB Sub Destination Settings. See DVB Sub Destination Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings>? dvbSubDestinationSettings;
  /// EBU TT D Destination Settings. See EBU TT D Destination Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings>? ebuTtDDestinationSettings;
  /// Embedded Destination Settings.
  final pulumi.Input<Map<String, dynamic>>? embeddedDestinationSettings;
  /// Embedded Plus SCTE20 Destination Settings.
  final pulumi.Input<Map<String, dynamic>>? embeddedPlusScte20DestinationSettings;
  /// RTMP Caption Info Destination Settings.
  final pulumi.Input<Map<String, dynamic>>? rtmpCaptionInfoDestinationSettings;
  /// SCTE20 Plus Embedded Destination Settings.
  final pulumi.Input<Map<String, dynamic>>? scte20PlusEmbeddedDestinationSettings;
  /// SCTE27 Destination Settings.
  final pulumi.Input<Map<String, dynamic>>? scte27DestinationSettings;
  /// SMPTE TT Destination Settings.
  final pulumi.Input<Map<String, dynamic>>? smpteTtDestinationSettings;
  /// Teletext Destination Settings.
  final pulumi.Input<Map<String, dynamic>>? teletextDestinationSettings;
  /// TTML Destination Settings. See TTML Destination Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings>? ttmlDestinationSettings;
  /// WebVTT Destination Settings. See WebVTT Destination Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings>? webvttDestinationSettings;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettings].
  /// [aribDestinationSettings] ARIB Destination Settings.
  /// [burnInDestinationSettings] Burn In Destination Settings. See Burn In Destination Settings for more details.
  /// [dvbSubDestinationSettings] DVB Sub Destination Settings. See DVB Sub Destination Settings for more details.
  /// [ebuTtDDestinationSettings] EBU TT D Destination Settings. See EBU TT D Destination Settings for more details.
  /// [embeddedDestinationSettings] Embedded Destination Settings.
  /// [embeddedPlusScte20DestinationSettings] Embedded Plus SCTE20 Destination Settings.
  /// [rtmpCaptionInfoDestinationSettings] RTMP Caption Info Destination Settings.
  /// [scte20PlusEmbeddedDestinationSettings] SCTE20 Plus Embedded Destination Settings.
  /// [scte27DestinationSettings] SCTE27 Destination Settings.
  /// [smpteTtDestinationSettings] SMPTE TT Destination Settings.
  /// [teletextDestinationSettings] Teletext Destination Settings.
  /// [ttmlDestinationSettings] TTML Destination Settings. See TTML Destination Settings for more details.
  /// [webvttDestinationSettings] WebVTT Destination Settings. See WebVTT Destination Settings for more details.
  ChannelEncoderSettingsCaptionDescriptionDestinationSettings({
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

