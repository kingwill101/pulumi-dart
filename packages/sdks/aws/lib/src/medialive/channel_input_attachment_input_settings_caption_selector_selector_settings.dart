// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_ancillary_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_dvb_sub_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_embedded_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_scte20_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_scte27_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_teletext_source_settings.dart';

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings {
  /// Ancillary Source Settings. See Ancillary Source Settings for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings>? ancillarySourceSettings;
  /// ARIB Source Settings.
  final pulumi.Input<Map<String, dynamic>>? aribSourceSettings;
  /// DVB Sub Source Settings. See DVB Sub Source Settings for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings>? dvbSubSourceSettings;
  /// Embedded Source Settings. See Embedded Source Settings for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings>? embeddedSourceSettings;
  /// SCTE20 Source Settings. See SCTE 20 Source Settings for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings>? scte20SourceSettings;
  /// SCTE27 Source Settings. See SCTE 27 Source Settings for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings>? scte27SourceSettings;
  /// Teletext Source Settings. See Teletext Source Settings for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings>? teletextSourceSettings;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings].
  /// [ancillarySourceSettings] Ancillary Source Settings. See Ancillary Source Settings for more details.
  /// [aribSourceSettings] ARIB Source Settings.
  /// [dvbSubSourceSettings] DVB Sub Source Settings. See DVB Sub Source Settings for more details.
  /// [embeddedSourceSettings] Embedded Source Settings. See Embedded Source Settings for more details.
  /// [scte20SourceSettings] SCTE20 Source Settings. See SCTE 20 Source Settings for more details.
  /// [scte27SourceSettings] SCTE27 Source Settings. See SCTE 27 Source Settings for more details.
  /// [teletextSourceSettings] Teletext Source Settings. See Teletext Source Settings for more details.
  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings({
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
      ancillarySourceSettings: map['ancillarySourceSettings'] == null ? null : ((ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings.fromMap((map['ancillarySourceSettings']! as Map).cast<String, dynamic>())).input()).input(),
      aribSourceSettings: map['aribSourceSettings'] == null ? null : (((map['aribSourceSettings'] as Map).cast<String, dynamic>()).input()).input(),
      dvbSubSourceSettings: map['dvbSubSourceSettings'] == null ? null : ((ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings.fromMap((map['dvbSubSourceSettings']! as Map).cast<String, dynamic>())).input()).input(),
      embeddedSourceSettings: map['embeddedSourceSettings'] == null ? null : ((ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings.fromMap((map['embeddedSourceSettings']! as Map).cast<String, dynamic>())).input()).input(),
      scte20SourceSettings: map['scte20SourceSettings'] == null ? null : ((ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings.fromMap((map['scte20SourceSettings']! as Map).cast<String, dynamic>())).input()).input(),
      scte27SourceSettings: map['scte27SourceSettings'] == null ? null : ((ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings.fromMap((map['scte27SourceSettings']! as Map).cast<String, dynamic>())).input()).input(),
      teletextSourceSettings: map['teletextSourceSettings'] == null ? null : ((ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings.fromMap((map['teletextSourceSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

