// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_caption_description_destination_settings_burn_in_destination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_dvb_sub_destination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_ebu_tt_ddestination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_ttml_destination_settings.dart';
import 'channel_encoder_settings_caption_description_destination_settings_webvtt_destination_settings.dart';

class ChannelEncoderSettingsCaptionDescriptionDestinationSettings {
  /// ARIB Destination Settings.
  final Map<String, dynamic>? aribDestinationSettings;
  /// Burn In Destination Settings. See Burn In Destination Settings for more details.
  final ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings? burnInDestinationSettings;
  /// DVB Sub Destination Settings. See DVB Sub Destination Settings for more details.
  final ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings? dvbSubDestinationSettings;
  /// EBU TT D Destination Settings. See EBU TT D Destination Settings for more details.
  final ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings? ebuTtDDestinationSettings;
  /// Embedded Destination Settings.
  final Map<String, dynamic>? embeddedDestinationSettings;
  /// Embedded Plus SCTE20 Destination Settings.
  final Map<String, dynamic>? embeddedPlusScte20DestinationSettings;
  /// RTMP Caption Info Destination Settings.
  final Map<String, dynamic>? rtmpCaptionInfoDestinationSettings;
  /// SCTE20 Plus Embedded Destination Settings.
  final Map<String, dynamic>? scte20PlusEmbeddedDestinationSettings;
  /// SCTE27 Destination Settings.
  final Map<String, dynamic>? scte27DestinationSettings;
  /// SMPTE TT Destination Settings.
  final Map<String, dynamic>? smpteTtDestinationSettings;
  /// Teletext Destination Settings.
  final Map<String, dynamic>? teletextDestinationSettings;
  /// TTML Destination Settings. See TTML Destination Settings for more details.
  final ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings? ttmlDestinationSettings;
  /// WebVTT Destination Settings. See WebVTT Destination Settings for more details.
  final ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings? webvttDestinationSettings;

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
      'burnInDestinationSettings': ?burnInDestinationSettings == null ? null : burnInDestinationSettings!.toMap(),
      'dvbSubDestinationSettings': ?dvbSubDestinationSettings == null ? null : dvbSubDestinationSettings!.toMap(),
      'ebuTtDDestinationSettings': ?ebuTtDDestinationSettings == null ? null : ebuTtDDestinationSettings!.toMap(),
      'embeddedDestinationSettings': ?embeddedDestinationSettings,
      'embeddedPlusScte20DestinationSettings': ?embeddedPlusScte20DestinationSettings,
      'rtmpCaptionInfoDestinationSettings': ?rtmpCaptionInfoDestinationSettings,
      'scte20PlusEmbeddedDestinationSettings': ?scte20PlusEmbeddedDestinationSettings,
      'scte27DestinationSettings': ?scte27DestinationSettings,
      'smpteTtDestinationSettings': ?smpteTtDestinationSettings,
      'teletextDestinationSettings': ?teletextDestinationSettings,
      'ttmlDestinationSettings': ?ttmlDestinationSettings == null ? null : ttmlDestinationSettings!.toMap(),
      'webvttDestinationSettings': ?webvttDestinationSettings == null ? null : webvttDestinationSettings!.toMap(),
    };
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettings(
      aribDestinationSettings: map['aribDestinationSettings'] == null ? null : (map['aribDestinationSettings'] as Map).cast<String, dynamic>(),
      burnInDestinationSettings: map['burnInDestinationSettings'] == null ? null : ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings.fromMap((map['burnInDestinationSettings'] as Map).cast<String, dynamic>()),
      dvbSubDestinationSettings: map['dvbSubDestinationSettings'] == null ? null : ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings.fromMap((map['dvbSubDestinationSettings'] as Map).cast<String, dynamic>()),
      ebuTtDDestinationSettings: map['ebuTtDDestinationSettings'] == null ? null : ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings.fromMap((map['ebuTtDDestinationSettings'] as Map).cast<String, dynamic>()),
      embeddedDestinationSettings: map['embeddedDestinationSettings'] == null ? null : (map['embeddedDestinationSettings'] as Map).cast<String, dynamic>(),
      embeddedPlusScte20DestinationSettings: map['embeddedPlusScte20DestinationSettings'] == null ? null : (map['embeddedPlusScte20DestinationSettings'] as Map).cast<String, dynamic>(),
      rtmpCaptionInfoDestinationSettings: map['rtmpCaptionInfoDestinationSettings'] == null ? null : (map['rtmpCaptionInfoDestinationSettings'] as Map).cast<String, dynamic>(),
      scte20PlusEmbeddedDestinationSettings: map['scte20PlusEmbeddedDestinationSettings'] == null ? null : (map['scte20PlusEmbeddedDestinationSettings'] as Map).cast<String, dynamic>(),
      scte27DestinationSettings: map['scte27DestinationSettings'] == null ? null : (map['scte27DestinationSettings'] as Map).cast<String, dynamic>(),
      smpteTtDestinationSettings: map['smpteTtDestinationSettings'] == null ? null : (map['smpteTtDestinationSettings'] as Map).cast<String, dynamic>(),
      teletextDestinationSettings: map['teletextDestinationSettings'] == null ? null : (map['teletextDestinationSettings'] as Map).cast<String, dynamic>(),
      ttmlDestinationSettings: map['ttmlDestinationSettings'] == null ? null : ChannelEncoderSettingsCaptionDescriptionDestinationSettingsTtmlDestinationSettings.fromMap((map['ttmlDestinationSettings'] as Map).cast<String, dynamic>()),
      webvttDestinationSettings: map['webvttDestinationSettings'] == null ? null : ChannelEncoderSettingsCaptionDescriptionDestinationSettingsWebvttDestinationSettings.fromMap((map['webvttDestinationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

