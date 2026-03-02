// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_rsession_app_settings_custom_image.dart';
import 'user_profile_user_settings_rsession_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsRSessionAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see Custom Image below.
  final pulumi.Input<List<UserProfileUserSettingsRSessionAppSettingsCustomImage>>? customImages;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final pulumi.Input<UserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec>? defaultResourceSpec;

  /// Creates a new [UserProfileUserSettingsRSessionAppSettings].
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see Custom Image below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  UserProfileUserSettingsRSessionAppSettings({
    this.customImages,
    this.defaultResourceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImages': ?pulumi.Input.mapOptionalInputValue<List<UserProfileUserSettingsRSessionAppSettingsCustomImage>, List<Map<String, dynamic>>>(customImages, (value) => pulumi.Input.encodeList<UserProfileUserSettingsRSessionAppSettingsCustomImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
    };
  }

  factory UserProfileUserSettingsRSessionAppSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsRSessionAppSettings(
      customImages: map['customImages'] == null ? null : ((pulumi.Input.decodeList<UserProfileUserSettingsRSessionAppSettingsCustomImage>(map['customImages']!, (value) => UserProfileUserSettingsRSessionAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      defaultResourceSpec: map['defaultResourceSpec'] == null ? null : ((UserProfileUserSettingsRSessionAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

