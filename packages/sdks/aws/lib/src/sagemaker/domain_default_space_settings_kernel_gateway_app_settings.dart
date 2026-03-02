// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings_kernel_gateway_app_settings_custom_image.dart';
import 'domain_default_space_settings_kernel_gateway_app_settings_default_resource_spec.dart';

class DomainDefaultSpaceSettingsKernelGatewayAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see `custom_image` Block below.
  final pulumi.Input<List<DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage>>? customImages;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec>? defaultResourceSpec;
  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final pulumi.Input<List<String>>? lifecycleConfigArns;

  /// Creates a new [DomainDefaultSpaceSettingsKernelGatewayAppSettings].
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see `custom_image` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  DomainDefaultSpaceSettingsKernelGatewayAppSettings({
    this.customImages,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImages': ?pulumi.Input.mapOptionalInputValue<List<DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage>, List<Map<String, dynamic>>>(customImages, (value) => pulumi.Input.encodeList<DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<DomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory DomainDefaultSpaceSettingsKernelGatewayAppSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsKernelGatewayAppSettings(
      customImages: map['customImages'] == null ? null : ((pulumi.Input.decodeList<DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage>(map['customImages']!, (value) => DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      defaultResourceSpec: map['defaultResourceSpec'] == null ? null : ((DomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec']! as Map).cast<String, dynamic>())).input()).input(),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null ? null : (((map['lifecycleConfigArns'] as List).cast<String>()).input()).input(),
    );
  }
}

