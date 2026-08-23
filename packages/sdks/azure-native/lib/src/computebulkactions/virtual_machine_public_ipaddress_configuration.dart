// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_sku.dart';
import 'virtual_machine_public_ipaddress_configuration_properties.dart';

/// Describes a virtual machines IP Configuration's PublicIPAddress configuration
class VirtualMachinePublicIPAddressConfiguration {
  /// The publicIP address configuration name.
  final pulumi.Input<String> name;
  /// Describes a virtual machines IP Configuration's PublicIPAddress configuration
  final pulumi.Input<VirtualMachinePublicIPAddressConfigurationProperties>? properties;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  final pulumi.Input<PublicIPAddressSku>? sku;
  /// Resource tags applied to the publicIP address created by this PublicIPAddressConfiguration
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualMachinePublicIPAddressConfiguration].
  /// [name] The publicIP address configuration name.
  /// [properties] Describes a virtual machines IP Configuration's PublicIPAddress configuration
  /// [sku] Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  /// [tags] Resource tags applied to the publicIP address created by this PublicIPAddressConfiguration
  const VirtualMachinePublicIPAddressConfiguration({
    required this.name,
    this.properties,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePublicIPAddressConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory VirtualMachinePublicIPAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePublicIPAddressConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePublicIPAddressConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
