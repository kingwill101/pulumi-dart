// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings {
  /// String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  final String? nameModifier;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings].
  /// [nameModifier] String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings({
    this.nameModifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameModifierValue = nameModifier;
    if (nameModifierValue != null) {
      map['nameModifier'] = nameModifierValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings(
      nameModifier:
          map['nameModifier'] == null ? null : map['nameModifier'] as String,
    );
  }
}
