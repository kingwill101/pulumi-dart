// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings {
  final pulumi.Input<String>? h265PackagingType;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings> hlsSettings;
  /// String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  final pulumi.Input<String>? nameModifier;
  final pulumi.Input<String>? segmentModifier;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings].
  /// [h265PackagingType] Optional.
  /// [hlsSettings] Required.
  /// [nameModifier] String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  /// [segmentModifier] Optional.
  const ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings({
    this.h265PackagingType,
    required this.hlsSettings,
    this.nameModifier,
    this.segmentModifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'h265PackagingType': ?h265PackagingType,
      'hlsSettings': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings, Map<String, dynamic>>(hlsSettings, (value) => value.toMap()),
      'nameModifier': ?nameModifier,
      'segmentModifier': ?segmentModifier,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings(
      h265PackagingType: (() { final guardedValue = map['h265PackagingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hlsSettings: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings.fromMap((map['hlsSettings']! as Map).cast<String, dynamic>())),
      nameModifier: (() { final guardedValue = map['nameModifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentModifier: (() { final guardedValue = map['segmentModifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
