// ignore_for_file: unused_element, unnecessary_cast

import '../space_space_settings_space_storage_settings_ebs_storage_settings/space_space_settings_space_storage_settings_ebs_storage_settings.dart';

class SpaceSpaceSettingsSpaceStorageSettings {
  /// A collection of EBS storage settings for a space. See <span pulumi-lang-nodejs="`ebsStorageSettings`" pulumi-lang-dotnet="`EbsStorageSettings`" pulumi-lang-go="`ebsStorageSettings`" pulumi-lang-python="`ebs_storage_settings`" pulumi-lang-yaml="`ebsStorageSettings`" pulumi-lang-java="`ebsStorageSettings`">`ebs_storage_settings`</span> Block below.
  final SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings
      ebsStorageSettings;

  SpaceSpaceSettingsSpaceStorageSettings({
    required this.ebsStorageSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ebsStorageSettings'] = ebsStorageSettings.toMap();
    return map;
  }

  factory SpaceSpaceSettingsSpaceStorageSettings.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsSpaceStorageSettings(
      ebsStorageSettings:
          SpaceSpaceSettingsSpaceStorageSettingsEbsStorageSettings.fromMap(
              (map['ebsStorageSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
