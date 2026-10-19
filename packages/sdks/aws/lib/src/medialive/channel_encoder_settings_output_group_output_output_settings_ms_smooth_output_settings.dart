// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings {
  /// Only applicable when this output is referencing an H.265 video description. Specifies whether MP4 segments should be packaged as HEV1 or HVC1.
  final pulumi.Input<String?>? h265PackagingType;
  /// String concatenated to the end of the destination filename.
  final pulumi.Input<String?>? nameModifier;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsMsSmoothOutputSettings].
  /// [h265PackagingType] Only applicable when this output is referencing an H.265 video description. Specifies whether MP4 segments should be packaged as HEV1 or HVC1.
  /// [nameModifier] String concatenated to the end of the destination filename.
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
