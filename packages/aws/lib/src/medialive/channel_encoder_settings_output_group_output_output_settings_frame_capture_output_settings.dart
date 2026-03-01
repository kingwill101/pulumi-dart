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
    return <String, dynamic>{'nameModifier': ?nameModifier};
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings(
      nameModifier: map['nameModifier'] == null
          ? null
          : map['nameModifier'] as String,
    );
  }
}
