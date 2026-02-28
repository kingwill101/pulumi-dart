// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings_static_key_setting_key_provider_server.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting {
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer?
      keyProviderServer;
  final String staticKeyValue;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting].
  /// [keyProviderServer] Optional.
  /// [staticKeyValue] Required.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting({
    this.keyProviderServer,
    required this.staticKeyValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyProviderServerValue = keyProviderServer;
    if (keyProviderServerValue != null) {
      map['keyProviderServer'] = keyProviderServerValue.toMap();
    }
    map['staticKeyValue'] = staticKeyValue;
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting(
      keyProviderServer: map['keyProviderServer'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer
              .fromMap(
                  (map['keyProviderServer'] as Map).cast<String, dynamic>()),
      staticKeyValue: map['staticKeyValue'] as String,
    );
  }
}
