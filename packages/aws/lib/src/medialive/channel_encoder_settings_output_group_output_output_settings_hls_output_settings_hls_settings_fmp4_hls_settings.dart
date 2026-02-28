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
    final map = <String, dynamic>{};
    final audioRenditionSetsValue = audioRenditionSets;
    if (audioRenditionSetsValue != null) {
      map['audioRenditionSets'] = audioRenditionSetsValue;
    }
    final nielsenId3BehaviorValue = nielsenId3Behavior;
    if (nielsenId3BehaviorValue != null) {
      map['nielsenId3Behavior'] = nielsenId3BehaviorValue;
    }
    final timedMetadataBehaviorValue = timedMetadataBehavior;
    if (timedMetadataBehaviorValue != null) {
      map['timedMetadataBehavior'] = timedMetadataBehaviorValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettingsFmp4HlsSettings.fromMap(
      Map<String, dynamic> map) {
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
