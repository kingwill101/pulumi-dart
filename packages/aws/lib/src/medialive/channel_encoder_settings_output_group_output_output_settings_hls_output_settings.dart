// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings {
  final String? h265PackagingType;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings
  hlsSettings;

  /// String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  final String? nameModifier;
  final String? segmentModifier;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings].
  /// [h265PackagingType] Optional.
  /// [hlsSettings] Required.
  /// [nameModifier] String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  /// [segmentModifier] Optional.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings({
    this.h265PackagingType,
    required this.hlsSettings,
    this.nameModifier,
    this.segmentModifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'h265PackagingType': ?h265PackagingType,
      'hlsSettings': hlsSettings.toMap(),
      'nameModifier': ?nameModifier,
      'segmentModifier': ?segmentModifier,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings(
      h265PackagingType: map['h265PackagingType'] == null
          ? null
          : map['h265PackagingType'] as String,
      hlsSettings:
          ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings.fromMap(
            (map['hlsSettings'] as Map).cast<String, dynamic>(),
          ),
      nameModifier: map['nameModifier'] == null
          ? null
          : map['nameModifier'] as String,
      segmentModifier: map['segmentModifier'] == null
          ? null
          : map['segmentModifier'] as String,
    );
  }
}
