// ignore_for_file: unused_element, unnecessary_cast

import 'channel_input_attachment_input_settings_caption_selector_selector_settings_ancillary_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_dvb_sub_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_embedded_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_scte20_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_scte27_source_settings.dart';
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_teletext_source_settings.dart';

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings {
  /// Ancillary Source Settings. See Ancillary Source Settings for more details.
  final ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings?
      ancillarySourceSettings;

  /// ARIB Source Settings.
  final Map<String, dynamic>? aribSourceSettings;

  /// DVB Sub Source Settings. See DVB Sub Source Settings for more details.
  final ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings?
      dvbSubSourceSettings;

  /// Embedded Source Settings. See Embedded Source Settings for more details.
  final ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings?
      embeddedSourceSettings;

  /// SCTE20 Source Settings. See SCTE 20 Source Settings for more details.
  final ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings?
      scte20SourceSettings;

  /// SCTE27 Source Settings. See SCTE 27 Source Settings for more details.
  final ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings?
      scte27SourceSettings;

  /// Teletext Source Settings. See Teletext Source Settings for more details.
  final ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings?
      teletextSourceSettings;

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
    final map = <String, dynamic>{};
    final ancillarySourceSettingsValue = ancillarySourceSettings;
    if (ancillarySourceSettingsValue != null) {
      map['ancillarySourceSettings'] = ancillarySourceSettingsValue.toMap();
    }
    final aribSourceSettingsValue = aribSourceSettings;
    if (aribSourceSettingsValue != null) {
      map['aribSourceSettings'] = aribSourceSettingsValue;
    }
    final dvbSubSourceSettingsValue = dvbSubSourceSettings;
    if (dvbSubSourceSettingsValue != null) {
      map['dvbSubSourceSettings'] = dvbSubSourceSettingsValue.toMap();
    }
    final embeddedSourceSettingsValue = embeddedSourceSettings;
    if (embeddedSourceSettingsValue != null) {
      map['embeddedSourceSettings'] = embeddedSourceSettingsValue.toMap();
    }
    final scte20SourceSettingsValue = scte20SourceSettings;
    if (scte20SourceSettingsValue != null) {
      map['scte20SourceSettings'] = scte20SourceSettingsValue.toMap();
    }
    final scte27SourceSettingsValue = scte27SourceSettings;
    if (scte27SourceSettingsValue != null) {
      map['scte27SourceSettings'] = scte27SourceSettingsValue.toMap();
    }
    final teletextSourceSettingsValue = teletextSourceSettings;
    if (teletextSourceSettingsValue != null) {
      map['teletextSourceSettings'] = teletextSourceSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettings(
      ancillarySourceSettings: map['ancillarySourceSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsAncillarySourceSettings
              .fromMap((map['ancillarySourceSettings'] as Map)
                  .cast<String, dynamic>()),
      aribSourceSettings: map['aribSourceSettings'] == null
          ? null
          : (map['aribSourceSettings'] as Map).cast<String, dynamic>(),
      dvbSubSourceSettings: map['dvbSubSourceSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsDvbSubSourceSettings
              .fromMap(
                  (map['dvbSubSourceSettings'] as Map).cast<String, dynamic>()),
      embeddedSourceSettings: map['embeddedSourceSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsEmbeddedSourceSettings
              .fromMap((map['embeddedSourceSettings'] as Map)
                  .cast<String, dynamic>()),
      scte20SourceSettings: map['scte20SourceSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings
              .fromMap(
                  (map['scte20SourceSettings'] as Map).cast<String, dynamic>()),
      scte27SourceSettings: map['scte27SourceSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte27SourceSettings
              .fromMap(
                  (map['scte27SourceSettings'] as Map).cast<String, dynamic>()),
      teletextSourceSettings: map['teletextSourceSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings
              .fromMap((map['teletextSourceSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
