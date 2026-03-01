// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings_static_key_setting.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings {
  final List<
    ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting
  >?
  staticKeySettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings].
  /// [staticKeySettings] Optional.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings({
    this.staticKeySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'staticKeySettings': ?staticKeySettings == null
          ? null
          : pulumi.Input.encodeList<
              ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting,
              Map<String, dynamic>
            >(staticKeySettings!, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings(
      staticKeySettings: map['staticKeySettings'] == null
          ? null
          : pulumi.Input.decodeList<
              ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting
            >(
              map['staticKeySettings'],
              (value) =>
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
