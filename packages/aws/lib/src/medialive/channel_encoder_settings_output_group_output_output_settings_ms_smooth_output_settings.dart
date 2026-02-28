// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings {
  final String? h265PackagingType;

  /// String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  final String? nameModifier;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings].
  /// [h265PackagingType] Optional.
  /// [nameModifier] String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings({
    this.h265PackagingType,
    this.nameModifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final h265PackagingTypeValue = h265PackagingType;
    if (h265PackagingTypeValue != null) {
      map['h265PackagingType'] = h265PackagingTypeValue;
    }
    final nameModifierValue = nameModifier;
    if (nameModifierValue != null) {
      map['nameModifier'] = nameModifierValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings(
      h265PackagingType: map['h265PackagingType'] == null
          ? null
          : map['h265PackagingType'] as String,
      nameModifier:
          map['nameModifier'] == null ? null : map['nameModifier'] as String,
    );
  }
}
