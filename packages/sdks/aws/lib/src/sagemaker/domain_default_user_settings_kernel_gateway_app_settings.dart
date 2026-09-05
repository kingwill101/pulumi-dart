// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_kernel_gateway_app_settings_custom_image.dart';
import 'domain_default_user_settings_kernel_gateway_app_settings_default_resource_spec.dart';

class DomainDefaultUserSettingsKernelGatewayAppSettings {
  /// A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see `customImage` Block below.
  final pulumi.Input<List<DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage>?>? customImages;
  /// Default instance type and the ARN of the SageMaker AI image created on the instance. see `defaultResourceSpec` Block below.
  final pulumi.Input<DomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpec?>? defaultResourceSpec;
  /// ARN of the Lifecycle Configurations.
  final pulumi.Input<List<String>?>? lifecycleConfigArns;

  /// Creates a new [DomainDefaultUserSettingsKernelGatewayAppSettings].
  /// [customImages] A list of custom SageMaker AI images that are configured to run as a KernelGateway app. see `customImage` Block below.
  /// [defaultResourceSpec] Default instance type and the ARN of the SageMaker AI image created on the instance. see `defaultResourceSpec` Block below.
  /// [lifecycleConfigArns] ARN of the Lifecycle Configurations.
  const DomainDefaultUserSettingsKernelGatewayAppSettings({
    this.customImages,
    this.defaultResourceSpec,
    this.lifecycleConfigArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImages': ?pulumi.Input.mapOptionalInputValue<List<DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage>, List<Map<String, dynamic>>>(customImages, (value) => pulumi.Input.encodeList<DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultResourceSpec': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpec, Map<String, dynamic>>(defaultResourceSpec, (value) => value.toMap()),
      'lifecycleConfigArns': ?lifecycleConfigArns,
    };
  }

  factory DomainDefaultUserSettingsKernelGatewayAppSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsKernelGatewayAppSettings(
      customImages: (() { final guardedValue = map['customImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage>(guardedValue, (value) => DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultResourceSpec: (() { final guardedValue = map['defaultResourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultUserSettingsKernelGatewayAppSettingsDefaultResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifecycleConfigArns: (() { final guardedValue = map['lifecycleConfigArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
