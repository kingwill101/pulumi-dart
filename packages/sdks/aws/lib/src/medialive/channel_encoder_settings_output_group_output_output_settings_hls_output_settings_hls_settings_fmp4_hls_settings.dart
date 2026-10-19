// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings {
  /// List of audio rendition sets, separated by commas.
  final pulumi.Input<String?>? audioRenditionSets;
  /// When set to `passthrough`, passes through Nielsen ID3.
  final pulumi.Input<String?>? nielsenId3Behavior;
  /// When set to `passthrough`, passes through timed metadata.
  final pulumi.Input<String?>? timedMetadataBehavior;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings].
  /// [audioRenditionSets] List of audio rendition sets, separated by commas.
  /// [nielsenId3Behavior] When set to `passthrough`, passes through Nielsen ID3.
  /// [timedMetadataBehavior] When set to `passthrough`, passes through timed metadata.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings({
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
      audioRenditionSets: (() { final guardedValue = map['audioRenditionSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nielsenId3Behavior: (() { final guardedValue = map['nielsenId3Behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataBehavior: (() { final guardedValue = map['timedMetadataBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
