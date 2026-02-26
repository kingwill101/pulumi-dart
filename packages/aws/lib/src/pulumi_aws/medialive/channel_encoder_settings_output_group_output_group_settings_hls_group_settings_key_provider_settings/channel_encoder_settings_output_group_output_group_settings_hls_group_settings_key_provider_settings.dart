// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings_static_key_setting/channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings_static_key_setting.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings {
  final List<
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting>?
      staticKeySettings;

  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings({
    this.staticKeySettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final staticKeySettingsValue = staticKeySettings;
    if (staticKeySettingsValue != null) {
      map['staticKeySettings'] = Input.encodeList<
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting,
          Map<String,
              dynamic>>(staticKeySettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings(
      staticKeySettings: map['staticKeySettings'] == null
          ? null
          : Input.decodeList<
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting>(
              map['staticKeySettings'],
              (value) =>
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
