// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_rsession_app_settings_custom_image.dart';
import 'user_profile_user_settings_rsession_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsRSessionAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see Custom Image below.
  final pulumi.Input<
    List<UserProfileUserSettingsRSessionAppSettingsCustomImage>
  >?
  customImages;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final pulumi.Input<
    UserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec
  >?
  defaultResourceSpec;

  /// Creates a new [UserProfileUserSettingsRSessionAppSettings].
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see Custom Image below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  UserProfileUserSettingsRSessionAppSettings({
    this.customImages,
    this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImages':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserProfileUserSettingsRSessionAppSettingsCustomImage>,
            List<Map<String, dynamic>>
          >(
            customImages,
            (value) =>
                pulumi.Input.encodeList<
                  UserProfileUserSettingsRSessionAppSettingsCustomImage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultResourceSpec':
          ?pulumi.Input.mapOptionalInputValue<
            UserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec,
            Map<String, dynamic>
          >(defaultResourceSpec, (value) => value.toMap()),
    };
  }

  factory UserProfileUserSettingsRSessionAppSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserProfileUserSettingsRSessionAppSettings(
      customImages: (() {
        final guardedValue = map['customImages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            UserProfileUserSettingsRSessionAppSettingsCustomImage
          >(
            guardedValue,
            (value) =>
                UserProfileUserSettingsRSessionAppSettingsCustomImage.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      defaultResourceSpec: (() {
        final guardedValue = map['defaultResourceSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
