// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings {
  final pulumi.Input<String>? audioRenditionSets;
  final pulumi.Input<String>? nielsenId3Behavior;
  final pulumi.Input<String>? timedMetadataBehavior;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings].
  /// [audioRenditionSets] Optional.
  /// [nielsenId3Behavior] Optional.
  /// [timedMetadataBehavior] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings({
    this.audioRenditionSets,
    this.nielsenId3Behavior,
    this.timedMetadataBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioRenditionSets': ?audioRenditionSets,
      'nielsenId3Behavior': ?nielsenId3Behavior,
      'timedMetadataBehavior': ?timedMetadataBehavior,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings(
      audioRenditionSets: map['audioRenditionSets'] == null ? null : (map['audioRenditionSets'] as String).input(),
      nielsenId3Behavior: map['nielsenId3Behavior'] == null ? null : (map['nielsenId3Behavior'] as String).input(),
      timedMetadataBehavior: map['timedMetadataBehavior'] == null ? null : (map['timedMetadataBehavior'] as String).input(),
    );
  }
}

