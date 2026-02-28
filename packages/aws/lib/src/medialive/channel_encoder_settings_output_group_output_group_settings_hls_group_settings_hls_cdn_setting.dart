// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_akamai_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_basic_put_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_media_store_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_s3_settings.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting_hls_webdav_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting {
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings?
      hlsAkamaiSettings;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings?
      hlsBasicPutSettings;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings?
      hlsMediaStoreSettings;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsS3Settings?
      hlsS3Settings;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings?
      hlsWebdavSettings;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting].
  /// [hlsAkamaiSettings] Optional.
  /// [hlsBasicPutSettings] Optional.
  /// [hlsMediaStoreSettings] Optional.
  /// [hlsS3Settings] Optional.
  /// [hlsWebdavSettings] Optional.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting({
    this.hlsAkamaiSettings,
    this.hlsBasicPutSettings,
    this.hlsMediaStoreSettings,
    this.hlsS3Settings,
    this.hlsWebdavSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hlsAkamaiSettingsValue = hlsAkamaiSettings;
    if (hlsAkamaiSettingsValue != null) {
      map['hlsAkamaiSettings'] = hlsAkamaiSettingsValue.toMap();
    }
    final hlsBasicPutSettingsValue = hlsBasicPutSettings;
    if (hlsBasicPutSettingsValue != null) {
      map['hlsBasicPutSettings'] = hlsBasicPutSettingsValue.toMap();
    }
    final hlsMediaStoreSettingsValue = hlsMediaStoreSettings;
    if (hlsMediaStoreSettingsValue != null) {
      map['hlsMediaStoreSettings'] = hlsMediaStoreSettingsValue.toMap();
    }
    final hlsS3SettingsValue = hlsS3Settings;
    if (hlsS3SettingsValue != null) {
      map['hlsS3Settings'] = hlsS3SettingsValue.toMap();
    }
    final hlsWebdavSettingsValue = hlsWebdavSettings;
    if (hlsWebdavSettingsValue != null) {
      map['hlsWebdavSettings'] = hlsWebdavSettingsValue.toMap();
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting(
      hlsAkamaiSettings: map['hlsAkamaiSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsAkamaiSettings
              .fromMap(
                  (map['hlsAkamaiSettings'] as Map).cast<String, dynamic>()),
      hlsBasicPutSettings: map['hlsBasicPutSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsBasicPutSettings
              .fromMap(
                  (map['hlsBasicPutSettings'] as Map).cast<String, dynamic>()),
      hlsMediaStoreSettings: map['hlsMediaStoreSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsMediaStoreSettings
              .fromMap((map['hlsMediaStoreSettings'] as Map)
                  .cast<String, dynamic>()),
      hlsS3Settings: map['hlsS3Settings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsS3Settings
              .fromMap((map['hlsS3Settings'] as Map).cast<String, dynamic>()),
      hlsWebdavSettings: map['hlsWebdavSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSettingHlsWebdavSettings
              .fromMap(
                  (map['hlsWebdavSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
