// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings {
  final pulumi.Input<String>? convert608To708;
  final pulumi.Input<int>? source608ChannelNumber;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings].
  /// [convert608To708] Optional.
  /// [source608ChannelNumber] Optional.
  const ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings({
    this.convert608To708,
    this.source608ChannelNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convert608To708': ?convert608To708,
      'source608ChannelNumber': ?source608ChannelNumber,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsScte20SourceSettings(
      convert608To708: (() { final guardedValue = map['convert608To708']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source608ChannelNumber: (() { final guardedValue = map['source608ChannelNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
