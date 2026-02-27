// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_profile_user_settings_rsession_app_settings_custom_image/user_profile_user_settings_rsession_app_settings_custom_image.dart';
import '../user_profile_user_settings_rsession_app_settings_default_resource_spec/user_profile_user_settings_rsession_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsRSessionAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see Custom Image below.
  final List<UserProfileUserSettingsRSessionAppSettingsCustomImage>?
      customImages;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final UserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  UserProfileUserSettingsRSessionAppSettings({
    this.customImages,
    this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customImagesValue = customImages;
    if (customImagesValue != null) {
      map['customImages'] = pulumi.Input.encodeList<
          UserProfileUserSettingsRSessionAppSettingsCustomImage,
          Map<String, dynamic>>(customImagesValue, (value) => value.toMap());
    }
    final defaultResourceSpecValue = defaultResourceSpec;
    if (defaultResourceSpecValue != null) {
      map['defaultResourceSpec'] = defaultResourceSpecValue.toMap();
    }
    return map;
  }

  factory UserProfileUserSettingsRSessionAppSettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsRSessionAppSettings(
      customImages: map['customImages'] == null
          ? null
          : pulumi.Input.decodeList<
                  UserProfileUserSettingsRSessionAppSettingsCustomImage>(
              map['customImages'],
              (value) =>
                  UserProfileUserSettingsRSessionAppSettingsCustomImage.fromMap(
                      (value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : UserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
