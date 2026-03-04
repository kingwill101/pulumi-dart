// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsFrameCaptureOutputSettings {
  /// String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  final pulumi.Input<String>? nameModifier;

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
      nameModifier: (() {
        final guardedValue = map['nameModifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
