// ignore_for_file: unused_element, unnecessary_cast

import 'user_profile_user_settings_tensor_board_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsTensorBoardAppSettings {
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final UserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpec? defaultResourceSpec;

  /// Creates a new [UserProfileUserSettingsTensorBoardAppSettings].
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  UserProfileUserSettingsTensorBoardAppSettings({
    this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResourceSpec': ?defaultResourceSpec == null ? null : defaultResourceSpec!.toMap(),
    };
  }

  factory UserProfileUserSettingsTensorBoardAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsTensorBoardAppSettings(
      defaultResourceSpec: map['defaultResourceSpec'] == null ? null : UserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

