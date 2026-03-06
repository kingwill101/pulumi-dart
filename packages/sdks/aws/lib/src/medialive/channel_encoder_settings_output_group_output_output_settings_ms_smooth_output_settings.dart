// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings {
  final pulumi.Input<String>? h265PackagingType;
  /// String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  final pulumi.Input<String>? nameModifier;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings].
  /// [h265PackagingType] Optional.
  /// [nameModifier] String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings({
    this.h265PackagingType,
    this.nameModifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'h265PackagingType': ?h265PackagingType,
      'nameModifier': ?nameModifier,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings(
      h265PackagingType: (() { final guardedValue = map['h265PackagingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameModifier: (() { final guardedValue = map['nameModifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

