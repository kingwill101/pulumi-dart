// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_sku.dart';
import 'virtual_machine_scale_set_public_ipaddress_configuration_properties.dart';

/// Describes a virtual machines scale set IP Configuration's PublicIPAddress
/// configuration
class VirtualMachineScaleSetPublicIPAddressConfiguration {
  /// The publicIP address configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machines scale set IP Configuration's PublicIPAddress
  /// configuration
  final pulumi.Input<VirtualMachineScaleSetPublicIPAddressConfigurationProperties>? properties;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as
  /// Flexible.
  final pulumi.Input<PublicIPAddressSku>? sku;

  /// Creates a new [VirtualMachineScaleSetPublicIPAddressConfiguration].
  /// [name] The publicIP address configuration name.
  /// [properties] Describes a virtual machines scale set IP Configuration's PublicIPAddress
  /// [sku] Describes the public IP Sku. It can only be set with OrchestrationMode as
  VirtualMachineScaleSetPublicIPAddressConfiguration({
    required this.name,
    this.properties,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetPublicIPAddressConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetPublicIPAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetPublicIPAddressConfiguration(
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (VirtualMachineScaleSetPublicIPAddressConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (PublicIPAddressSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

