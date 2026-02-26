// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../space_space_settings_kernel_gateway_app_settings_custom_image/space_space_settings_kernel_gateway_app_settings_custom_image.dart';
import '../space_space_settings_kernel_gateway_app_settings_default_resource_spec/space_space_settings_kernel_gateway_app_settings_default_resource_spec.dart';

class SpaceSpaceSettingsKernelGatewayAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. See <span pulumi-lang-nodejs="`customImage`" pulumi-lang-dotnet="`CustomImage`" pulumi-lang-go="`customImage`" pulumi-lang-python="`custom_image`" pulumi-lang-yaml="`customImage`" pulumi-lang-java="`customImage`">`custom_image`</span> Block below.
  final List<SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage>?
      customImages;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See <span pulumi-lang-nodejs="`defaultResourceSpec`" pulumi-lang-dotnet="`DefaultResourceSpec`" pulumi-lang-go="`defaultResourceSpec`" pulumi-lang-python="`default_resource_spec`" pulumi-lang-yaml="`defaultResourceSpec`" pulumi-lang-java="`defaultResourceSpec`">`default_resource_spec`</span> Block below.
  final SpaceSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  SpaceSpaceSettingsKernelGatewayAppSettings({
    this.customImages,
    required this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customImagesValue = customImages;
    if (customImagesValue != null) {
      map['customImages'] = Input.encodeList<
          SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage,
          Map<String, dynamic>>(customImagesValue, (value) => value.toMap());
    }
    map['defaultResourceSpec'] = defaultResourceSpec.toMap();
    final lifecycleConfigArnsValue = lifecycleConfigArns;
    if (lifecycleConfigArnsValue != null) {
      map['lifecycleConfigArns'] = lifecycleConfigArnsValue;
    }
    return map;
  }

  factory SpaceSpaceSettingsKernelGatewayAppSettings.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsKernelGatewayAppSettings(
      customImages: map['customImages'] == null
          ? null
          : Input.decodeList<
                  SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage>(
              map['customImages'],
              (value) =>
                  SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage.fromMap(
                      (value as Map).cast<String, dynamic>())),
      defaultResourceSpec:
          SpaceSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec.fromMap(
              (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null
          ? null
          : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}
