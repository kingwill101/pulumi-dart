// ignore_for_file: unused_element, unnecessary_cast

import 'public_ipaddress_sku_response.dart';
import 'virtual_machine_scale_set_public_ipaddress_configuration_properties_response.dart';

/// Describes a virtual machines scale set IP Configuration's PublicIPAddress
/// configuration
class VirtualMachineScaleSetPublicIPAddressConfigurationResponse {
  /// The publicIP address configuration name.
  final String name;
  /// Describes a virtual machines scale set IP Configuration's PublicIPAddress
  /// configuration
  final VirtualMachineScaleSetPublicIPAddressConfigurationPropertiesResponse? properties;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as
  /// Flexible.
  final PublicIPAddressSkuResponse? sku;

  /// Creates a new [VirtualMachineScaleSetPublicIPAddressConfigurationResponse].
  /// [name] The publicIP address configuration name.
  /// [properties] Describes a virtual machines scale set IP Configuration's PublicIPAddress
  /// [sku] Describes the public IP Sku. It can only be set with OrchestrationMode as
  VirtualMachineScaleSetPublicIPAddressConfigurationResponse({
    required this.name,
    this.properties,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
    };
  }

  factory VirtualMachineScaleSetPublicIPAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetPublicIPAddressConfigurationResponse(
      name: map['name'] as String,
      properties: map['properties'] == null ? null : VirtualMachineScaleSetPublicIPAddressConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : PublicIPAddressSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

