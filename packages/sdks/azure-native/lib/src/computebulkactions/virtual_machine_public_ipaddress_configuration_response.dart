// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_sku_response.dart';
import 'virtual_machine_public_ipaddress_configuration_properties_response.dart';

/// Describes a virtual machines IP Configuration's PublicIPAddress configuration
class VirtualMachinePublicIPAddressConfigurationResponse {
  /// The publicIP address configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machines IP Configuration's PublicIPAddress configuration
  final pulumi.Input<VirtualMachinePublicIPAddressConfigurationPropertiesResponse>? properties;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  final pulumi.Input<PublicIPAddressSkuResponse>? sku;
  /// Resource tags applied to the publicIP address created by this PublicIPAddressConfiguration
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualMachinePublicIPAddressConfigurationResponse].
  /// [name] The publicIP address configuration name.
  /// [properties] Describes a virtual machines IP Configuration's PublicIPAddress configuration
  /// [sku] Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  /// [tags] Resource tags applied to the publicIP address created by this PublicIPAddressConfiguration
  const VirtualMachinePublicIPAddressConfigurationResponse({
    required this.name,
    this.properties,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePublicIPAddressConfigurationPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory VirtualMachinePublicIPAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePublicIPAddressConfigurationResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePublicIPAddressConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
