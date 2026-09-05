// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_tensor_board_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsTensorBoardAppSettings {
  /// Default instance type and the ARN of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final pulumi.Input<UserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpec?>? defaultResourceSpec;

  /// Creates a new [UserProfileUserSettingsTensorBoardAppSettings].
  /// [defaultResourceSpec] Default instance type and the ARN of the SageMaker AI image created on the instance. see Default Resource Spec below.
  const UserProfileUserSettingsTensorBoardAppSettings({
    this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
    };
  }

  factory UserProfileUserSettingsTensorBoardAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsTensorBoardAppSettings(
      defaultResourceSpec: (() { final guardedValue = map['defaultResourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettingsTensorBoardAppSettingsDefaultResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
