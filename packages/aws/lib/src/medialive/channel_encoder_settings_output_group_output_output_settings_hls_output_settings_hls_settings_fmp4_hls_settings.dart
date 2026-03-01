// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings {
  final String? audioRenditionSets;
  final String? nielsenId3Behavior;
  final String? timedMetadataBehavior;

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

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings(
      audioRenditionSets: map['audioRenditionSets'] == null
          ? null
          : map['audioRenditionSets'] as String,
      nielsenId3Behavior: map['nielsenId3Behavior'] == null
          ? null
          : map['nielsenId3Behavior'] as String,
      timedMetadataBehavior: map['timedMetadataBehavior'] == null
          ? null
          : map['timedMetadataBehavior'] as String,
    );
  }
}
