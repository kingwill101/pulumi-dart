// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings_kernel_gateway_app_settings_custom_image.dart';
import 'user_profile_user_settings_kernel_gateway_app_settings_default_resource_spec.dart';

class UserProfileUserSettingsKernelGatewayAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see Custom Image below.
  final List<UserProfileUserSettingsKernelGatewayAppSettingsCustomImage>?
      customImages;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  final UserProfileUserSettingsKernelGatewayAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  /// Creates a new [UserProfileUserSettingsKernelGatewayAppSettings].
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see Custom Image below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see Default Resource Spec below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  UserProfileUserSettingsKernelGatewayAppSettings({
    this.customImages,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customImagesValue = customImages;
    if (customImagesValue != null) {
      map['customImages'] = pulumi.Input.encodeList<
          UserProfileUserSettingsKernelGatewayAppSettingsCustomImage,
          Map<String, dynamic>>(customImagesValue, (value) => value.toMap());
    }
    final defaultResourceSpecValue = defaultResourceSpec;
    if (defaultResourceSpecValue != null) {
      map['defaultResourceSpec'] = defaultResourceSpecValue.toMap();
    }
    final lifecycleConfigArnsValue = lifecycleConfigArns;
    if (lifecycleConfigArnsValue != null) {
      map['lifecycleConfigArns'] = lifecycleConfigArnsValue;
    }
    return map;
  }

  factory UserProfileUserSettingsKernelGatewayAppSettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsKernelGatewayAppSettings(
      customImages: map['customImages'] == null
          ? null
          : pulumi.Input.decodeList<
                  UserProfileUserSettingsKernelGatewayAppSettingsCustomImage>(
              map['customImages'],
              (value) =>
                  UserProfileUserSettingsKernelGatewayAppSettingsCustomImage
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : UserProfileUserSettingsKernelGatewayAppSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null
          ? null
          : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}
