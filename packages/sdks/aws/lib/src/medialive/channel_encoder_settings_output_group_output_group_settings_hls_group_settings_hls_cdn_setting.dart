// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_akamai_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_basic_put_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_media_store_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_s3_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_webdav_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting {
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings>? hlsAkamaiSettings;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings>? hlsBasicPutSettings;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings>? hlsMediaStoreSettings;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsS3Settings>? hlsS3Settings;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings>? hlsWebdavSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting].
  /// [hlsAkamaiSettings] Optional.
  /// [hlsBasicPutSettings] Optional.
  /// [hlsMediaStoreSettings] Optional.
  /// [hlsS3Settings] Optional.
  /// [hlsWebdavSettings] Optional.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting({
    this.hlsAkamaiSettings,
    this.hlsBasicPutSettings,
    this.hlsMediaStoreSettings,
    this.hlsS3Settings,
    this.hlsWebdavSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hlsAkamaiSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings, Map<String, dynamic>>(hlsAkamaiSettings, (value) => value.toMap()),
      'hlsBasicPutSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings, Map<String, dynamic>>(hlsBasicPutSettings, (value) => value.toMap()),
      'hlsMediaStoreSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings, Map<String, dynamic>>(hlsMediaStoreSettings, (value) => value.toMap()),
      'hlsS3Settings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsS3Settings, Map<String, dynamic>>(hlsS3Settings, (value) => value.toMap()),
      'hlsWebdavSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings, Map<String, dynamic>>(hlsWebdavSettings, (value) => value.toMap()),
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting(
      hlsAkamaiSettings: (() { final guardedValue = map['hlsAkamaiSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hlsBasicPutSettings: (() { final guardedValue = map['hlsBasicPutSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hlsMediaStoreSettings: (() { final guardedValue = map['hlsMediaStoreSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hlsS3Settings: (() { final guardedValue = map['hlsS3Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsS3Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hlsWebdavSettings: (() { final guardedValue = map['hlsWebdavSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
