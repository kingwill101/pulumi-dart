// ignore_for_file: unused_element, unnecessary_cast

import '../domain_default_user_settings_space_storage_settings_default_ebs_storage_settings/domain_default_user_settings_space_storage_settings_default_ebs_storage_settings.dart';

class DomainDefaultUserSettingsSpaceStorageSettings {
  /// The default EBS storage settings for a private space. See <span pulumi-lang-nodejs="`defaultEbsStorageSettings`" pulumi-lang-dotnet="`DefaultEbsStorageSettings`" pulumi-lang-go="`defaultEbsStorageSettings`" pulumi-lang-python="`default_ebs_storage_settings`" pulumi-lang-yaml="`defaultEbsStorageSettings`" pulumi-lang-java="`defaultEbsStorageSettings`">`default_ebs_storage_settings`</span> Block below.
  final DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings?
      defaultEbsStorageSettings;

  DomainDefaultUserSettingsSpaceStorageSettings({
    this.defaultEbsStorageSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultEbsStorageSettingsValue = defaultEbsStorageSettings;
    if (defaultEbsStorageSettingsValue != null) {
      map['defaultEbsStorageSettings'] = defaultEbsStorageSettingsValue.toMap();
    }
    return map;
  }

  factory DomainDefaultUserSettingsSpaceStorageSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsSpaceStorageSettings(
      defaultEbsStorageSettings: map['defaultEbsStorageSettings'] == null
          ? null
          : DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings
              .fromMap((map['defaultEbsStorageSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
