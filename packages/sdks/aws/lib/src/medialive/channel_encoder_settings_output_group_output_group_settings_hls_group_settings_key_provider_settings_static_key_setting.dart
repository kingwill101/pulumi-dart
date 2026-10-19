// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings_static_key_setting_key_provider_server.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting {
  /// Location of the license server used for protecting content. See `keyProviderServer` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer?>? keyProviderServer;
  /// Static key value as a 32-character hexadecimal string.
  final pulumi.Input<String> staticKeyValue;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting].
  /// [keyProviderServer] Location of the license server used for protecting content. See `keyProviderServer` Block for details.
  /// [staticKeyValue] Static key value as a 32-character hexadecimal string.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting({
    this.keyProviderServer,
    required this.staticKeyValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyProviderServer': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer, Map<String, dynamic>>(keyProviderServer, (value) => value.toMap()),
      'staticKeyValue': staticKeyValue,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySetting(
      keyProviderServer: (() { final guardedValue = map['keyProviderServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettingsStaticKeySettingKeyProviderServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      staticKeyValue: pulumi.Input.fromValue(map['staticKeyValue'] as String),
    );
  }
}
