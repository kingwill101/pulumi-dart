// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_kernel_gateway_app_settings_custom_image.dart';
import 'domain_default_user_settings_kernel_gateway_app_settings_default_resource_spec.dart';

class DomainDefaultUserSettingsKernelGatewayAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see `custom_image` Block below.
  final List<DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage>? customImages;
  /// The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  final DomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpec? defaultResourceSpec;
  /// The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  final List<String>? lifecycleConfigArns;

  /// Creates a new [DomainDefaultUserSettingsKernelGatewayAppSettings].
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see `custom_image` Block below.
  /// [defaultResourceSpec] The default instance type and the Amazon Resource Name (ARN) of the SageMaker AI image created on the instance. see `default_resource_spec` Block below.
  /// [lifecycleConfigArns] The Amazon Resource Name (ARN) of the Lifecycle Configurations.
  DomainDefaultUserSettingsKernelGatewayAppSettings({
    this.customImages,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImages': ?customImages == null ? null : pulumi.Input.encodeList<DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage, Map<String, dynamic>>(customImages!, (value) => value.toMap()),
      'defaultResourceSpec': ?defaultResourceSpec == null ? null : defaultResourceSpec!.toMap(),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory DomainDefaultUserSettingsKernelGatewayAppSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsKernelGatewayAppSettings(
      customImages: map['customImages'] == null ? null : pulumi.Input.decodeList<DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage>(map['customImages'], (value) => DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>())),
      defaultResourceSpec: map['defaultResourceSpec'] == null ? null : DomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpec.fromMap((map['defaultResourceSpec'] as Map).cast<String, dynamic>()),
      lifecycleConfigArns: map['lifecycleConfigArns'] == null ? null : (map['lifecycleConfigArns'] as List).cast<String>(),
    );
  }
}

