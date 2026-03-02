// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_space_settings_kernel_gateway_app_settings_custom_image.dart';
import 'space_space_settings_kernel_gateway_app_settings_default_resource_spec.dart';

class SpaceSpaceSettingsKernelGatewayAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. See `custom_image` Block below.
  final pulumi.Input<List<SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage>>? customImages;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  final pulumi.Input<SpaceSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec> defaultResourceSpec;
  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final pulumi.Input<List<String>>? lifecycleConfigArns;

  /// Creates a new [SpaceSpaceSettingsKernelGatewayAppSettings].
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a KernelGateway app. See `custom_image` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. See `default_resource_spec` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  SpaceSpaceSettingsKernelGatewayAppSettings({
    this.customImages,
    required this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImages': ?pulumi.Input.mapOptionalInputValue<List<SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage>, List<Map<String, dynamic>>>(customImages, (value) => pulumi.Input.encodeList<SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': pulumi.Input.mapInputValue<SpaceSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory SpaceSpaceSettingsKernelGatewayAppSettings.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsKernelGatewayAppSettings(
      customImages: map['customImages'] == null ? null : (pulumi.Input.decodeList<SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage>(map['customImages'], (value) => SpaceSpaceSettingsKernelGatewayAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultResourceSpec: (SpaceSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec'] as Map).cast<String, dynamic>())).input(),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null ? null : ((map['lifecycleConfigArns'] as List).cast<String>()).input(),
    );
  }
}

