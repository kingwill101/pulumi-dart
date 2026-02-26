// ignore_for_file: unused_element, unnecessary_cast

import '../user_profile_user_settings_space_storage_settings_default_ebs_storage_settings/user_profile_user_settings_space_storage_settings_default_ebs_storage_settings.dart';

class UserProfileUserSettingsSpaceStorageSettings {
  /// The default EBS storage settings for a private space. See Default EBS Storage Settings below.
  final UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings?
      defaultEbsStorageSettings;

  UserProfileUserSettingsSpaceStorageSettings({
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

  factory UserProfileUserSettingsSpaceStorageSettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsSpaceStorageSettings(
      defaultEbsStorageSettings: map['defaultEbsStorageSettings'] == null
          ? null
          : UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings
              .fromMap((map['defaultEbsStorageSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
