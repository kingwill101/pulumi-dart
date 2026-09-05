// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings_kernel_gateway_app_settings_custom_image.dart';
import 'domain_default_space_settings_kernel_gateway_app_settings_default_resource_spec.dart';

class DomainDefaultSpaceSettingsKernelGatewayAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see `customImage` Block below.
  final pulumi.Input<List<DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage>?>? customImages;
  /// Default instance type and the ARN of the SageMaker AI image created on the instance. see `defaultResourceSpec` Block below.
  final pulumi.Input<DomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec?>? defaultResourceSpec;
  /// ARN of the Lifecycle Configurations.
  final pulumi.Input<List<String>?>? lifecycleConfigArns;

  /// Creates a new [DomainDefaultSpaceSettingsKernelGatewayAppSettings].
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see `customImage` Block below.
  /// [defaultResourceSpec] Default instance type and the ARN of the SageMaker AI image created on the instance. see `defaultResourceSpec` Block below.
  /// [lifecycleConfigArns] ARN of the Lifecycle Configurations.
  const DomainDefaultSpaceSettingsKernelGatewayAppSettings({
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
      customImages: (() { final guardedValue = map['customImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage>(guardedValue, (value) => DomainDefaultSpaceSettingsKernelGatewayAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultResourceSpec: (() { final guardedValue = map['defaultResourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultSpaceSettingsKernelGatewayAppSettingsDefaultResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifecycleConfigArns: (() { final guardedValue = map['lifecycleConfigArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
