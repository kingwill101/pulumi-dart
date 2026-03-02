// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_space_storage_settings_default_ebs_storage_settings.dart';

class UserProfileUserSettingsSpaceStorageSettings {
  /// The default EBS storage settings for a private space. See Default EBS Storage Settings below.
  final pulumi.Input<UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings>? defaultEbsStorageSettings;

  /// Creates a new [UserProfileUserSettingsSpaceStorageSettings].
  /// [defaultEbsStorageSettings] The default EBS storage settings for a private space. See Default EBS Storage Settings below.
  UserProfileUserSettingsSpaceStorageSettings({
    this.defaultEbsStorageSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultEbsStorageSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings, Map<String, dynamic>>(defaultEbsStorageSettings, (value) => value.toMap()),
    };
  }

  factory UserProfileUserSettingsSpaceStorageSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsSpaceStorageSettings(
      defaultEbsStorageSettings: map['defaultEbsStorageSettings'] == null ? null : ((UserProfileUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings.fromMap((map['defaultEbsStorageSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

