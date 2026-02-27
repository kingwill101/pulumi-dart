// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_default_space_settings_kernel_gateway_app_settings_custom_image/domain_default_space_settings_kernel_gateway_app_settings_custom_image.dart';
import '../domain_default_space_settings_kernel_gateway_app_settings_default_resource_spec/domain_default_space_settings_kernel_gateway_app_settings_default_resource_spec.dart';

class DomainDefaultSpaceSettingsKernelGatewayAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see `custom_image` Block below.
  final List<DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage>?
      customImages;

  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final DomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec?
      defaultResourceSpec;

  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  DomainDefaultSpaceSettingsKernelGatewayAppSettings({
    this.customImages,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customImagesValue = customImages;
    if (customImagesValue != null) {
      map['customImages'] = pulumi.Input.encodeList<
          DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage,
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

  factory DomainDefaultSpaceSettingsKernelGatewayAppSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsKernelGatewayAppSettings(
      customImages: map['customImages'] == null
          ? null
          : pulumi.Input.decodeList<
                  DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage>(
              map['customImages'],
              (value) =>
                  DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null
          ? null
          : DomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec
              .fromMap(
                  (map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null
          ? null
          : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}
