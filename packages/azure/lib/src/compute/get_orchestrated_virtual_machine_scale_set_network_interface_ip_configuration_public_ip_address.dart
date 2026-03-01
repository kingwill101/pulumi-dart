// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orchestrated_virtual_machine_scale_set_network_interface_ip_configuration_public_ip_address_ip_tag.dart';

class GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress {
  /// The domain name label for the DNS settings.
  final String domainNameLabel;
  /// The idle timeout in minutes.
  final int idleTimeoutInMinutes;
  /// A list of `ip_tag` blocks as defined below.
  final List<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag> ipTags;
  /// The name of this Orchestrated Virtual Machine Scale Set.
  final String name;
  /// The ID of the public IP prefix.
  final String publicIpPrefixId;
  /// The Internet Protocol Version of the public IP address.
  final String version;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress].
  /// [domainNameLabel] The domain name label for the DNS settings.
  /// [idleTimeoutInMinutes] The idle timeout in minutes.
  /// [ipTags] A list of `ip_tag` blocks as defined below.
  /// [name] The name of this Orchestrated Virtual Machine Scale Set.
  /// [publicIpPrefixId] The ID of the public IP prefix.
  /// [version] The Internet Protocol Version of the public IP address.
  GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress({
    required this.domainNameLabel,
    required this.idleTimeoutInMinutes,
    required this.ipTags,
    required this.name,
    required this.publicIpPrefixId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': domainNameLabel,
      'idleTimeoutInMinutes': idleTimeoutInMinutes,
      'ipTags': pulumi.Input.encodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag, Map<String, dynamic>>(ipTags, (value) => value.toMap()),
      'name': name,
      'publicIpPrefixId': publicIpPrefixId,
      'version': version,
    };
  }

  factory GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress(
      domainNameLabel: map['domainNameLabel'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] as int,
      ipTags: pulumi.Input.decodeList<GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag>(map['ipTags'], (value) => GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      publicIpPrefixId: map['publicIpPrefixId'] as String,
      version: map['version'] as String,
    );
  }
}

