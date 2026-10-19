// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_ancillary_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_dvb_sub_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_embedded_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_scte20_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_scte27_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_teletext_source_settings.dart';

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings {
  /// Ancillary source settings. See `ancillarySourceSettings` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings?>? ancillarySourceSettings;
  /// ARIB source settings. Can be set as an empty block.
  final pulumi.Input<Map<String, dynamic>?>? aribSourceSettings;
  /// DVB Sub source settings. See `dvbSubSourceSettings` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings?>? dvbSubSourceSettings;
  /// Embedded source settings. See `embeddedSourceSettings` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings?>? embeddedSourceSettings;
  /// SCTE-20 source settings. See `scte20SourceSettings` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings?>? scte20SourceSettings;
  /// SCTE-27 source settings. See `scte27SourceSettings` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings?>? scte27SourceSettings;
  /// Teletext source settings. See `teletextSourceSettings` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings?>? teletextSourceSettings;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings].
  /// [ancillarySourceSettings] Ancillary source settings. See `ancillarySourceSettings` Block for details.
  /// [aribSourceSettings] ARIB source settings. Can be set as an empty block.
  /// [dvbSubSourceSettings] DVB Sub source settings. See `dvbSubSourceSettings` Block for details.
  /// [embeddedSourceSettings] Embedded source settings. See `embeddedSourceSettings` Block for details.
  /// [scte20SourceSettings] SCTE-20 source settings. See `scte20SourceSettings` Block for details.
  /// [scte27SourceSettings] SCTE-27 source settings. See `scte27SourceSettings` Block for details.
  /// [teletextSourceSettings] Teletext source settings. See `teletextSourceSettings` Block for details.
  const ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings({
    this.ancillarySourceSettings,
    this.aribSourceSettings,
    this.dvbSubSourceSettings,
    this.embeddedSourceSettings,
    this.scte20SourceSettings,
    this.scte27SourceSettings,
    this.teletextSourceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancillarySourceSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings, Map<String, dynamic>>(ancillarySourceSettings, (value) => value.toMap()),
      'aribSourceSettings': ?aribSourceSettings,
      'dvbSubSourceSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings, Map<String, dynamic>>(dvbSubSourceSettings, (value) => value.toMap()),
      'embeddedSourceSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings, Map<String, dynamic>>(embeddedSourceSettings, (value) => value.toMap()),
      'scte20SourceSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings, Map<String, dynamic>>(scte20SourceSettings, (value) => value.toMap()),
      'scte27SourceSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings, Map<String, dynamic>>(scte27SourceSettings, (value) => value.toMap()),
      'teletextSourceSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings, Map<String, dynamic>>(teletextSourceSettings, (value) => value.toMap()),
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings(
      ancillarySourceSettings: (() { final guardedValue = map['ancillarySourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      aribSourceSettings: (() { final guardedValue = map['aribSourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      dvbSubSourceSettings: (() { final guardedValue = map['dvbSubSourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      embeddedSourceSettings: (() { final guardedValue = map['embeddedSourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scte20SourceSettings: (() { final guardedValue = map['scte20SourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scte27SourceSettings: (() { final guardedValue = map['scte27SourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      teletextSourceSettings: (() { final guardedValue = map['teletextSourceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
