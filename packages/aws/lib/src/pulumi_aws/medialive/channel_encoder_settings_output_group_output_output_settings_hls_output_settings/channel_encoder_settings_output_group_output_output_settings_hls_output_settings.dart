// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings/channel_encoder_settings_output_group_output_output_settings_hls_output_settings_hls_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings {
  final String? h265PackagingType;
  final ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings
      hlsSettings;

  /// String concatenated to the end of the destination filename. Required for multiple outputs of the same type.
  final String? nameModifier;
  final String? segmentModifier;

  ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings({
    this.h265PackagingType,
    required this.hlsSettings,
    this.nameModifier,
    this.segmentModifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final h265PackagingTypeValue = h265PackagingType;
    if (h265PackagingTypeValue != null) {
      map['h265PackagingType'] = h265PackagingTypeValue;
    }
    map['hlsSettings'] = hlsSettings.toMap();
    final nameModifierValue = nameModifier;
    if (nameModifierValue != null) {
      map['nameModifier'] = nameModifierValue;
    }
    final segmentModifierValue = segmentModifier;
    if (segmentModifierValue != null) {
      map['segmentModifier'] = segmentModifierValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettings(
      h265PackagingType: map['h265PackagingType'] == null
          ? null
          : map['h265PackagingType'] as String,
      hlsSettings:
          ChannelEncoderSettingsOutputGroupOutputOutputSettingsHlsOutputSettingsHlsSettings
              .fromMap((map['hlsSettings'] as Map).cast<String, dynamic>()),
      nameModifier:
          map['nameModifier'] == null ? null : map['nameModifier'] as String,
      segmentModifier: map['segmentModifier'] == null
          ? null
          : map['segmentModifier'] as String,
    );
  }
}
