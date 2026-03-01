// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_sku.dart';
import 'sub_resource.dart';
import 'virtual_machine_ip_tag.dart';
import 'virtual_machine_public_ipaddress_dns_settings_configuration.dart';

/// Describes a virtual machines IP Configuration's PublicIPAddress configuration
class VirtualMachinePublicIPAddressConfiguration {
  /// Specify what happens to the public IP address when the VM is deleted
  final String? deleteOption;
  /// The dns settings to be applied on the publicIP addresses .
  final VirtualMachinePublicIPAddressDnsSettingsConfiguration? dnsSettings;
  /// The idle timeout of the public IP address.
  final int? idleTimeoutInMinutes;
  /// The list of IP tags associated with the public IP address.
  final List<VirtualMachineIpTag>? ipTags;
  /// The publicIP address configuration name.
  final String name;
  /// Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  final String? publicIPAddressVersion;
  /// Specify the public IP allocation type
  final String? publicIPAllocationMethod;
  /// The PublicIPPrefix from which to allocate publicIP addresses.
  final SubResource? publicIPPrefix;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  final PublicIPAddressSku? sku;

  /// Creates a new [VirtualMachinePublicIPAddressConfiguration].
  /// [deleteOption] Specify what happens to the public IP address when the VM is deleted
  /// [dnsSettings] The dns settings to be applied on the publicIP addresses .
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipTags] The list of IP tags associated with the public IP address.
  /// [name] The publicIP address configuration name.
  /// [publicIPAddressVersion] Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  /// [publicIPAllocationMethod] Specify the public IP allocation type
  /// [publicIPPrefix] The PublicIPPrefix from which to allocate publicIP addresses.
  /// [sku] Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  VirtualMachinePublicIPAddressConfiguration({
    this.deleteOption,
    this.dnsSettings,
    this.idleTimeoutInMinutes,
    this.ipTags,
    required this.name,
    this.publicIPAddressVersion,
    this.publicIPAllocationMethod,
    this.publicIPPrefix,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOption': ?deleteOption,
      'dnsSettings': ?dnsSettings == null ? null : dnsSettings!.toMap(),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?ipTags == null ? null : pulumi.Input.encodeList<VirtualMachineIpTag, Map<String, dynamic>>(ipTags!, (value) => value.toMap()),
      'name': name,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?publicIPPrefix == null ? null : publicIPPrefix!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
    };
  }

  factory VirtualMachinePublicIPAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePublicIPAddressConfiguration(
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      dnsSettings: map['dnsSettings'] == null ? null : VirtualMachinePublicIPAddressDnsSettingsConfiguration.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      ipTags: map['ipTags'] == null ? null : pulumi.Input.decodeList<VirtualMachineIpTag>(map['ipTags'], (value) => VirtualMachineIpTag.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : map['publicIPAddressVersion'] as String,
      publicIPAllocationMethod: map['publicIPAllocationMethod'] == null ? null : map['publicIPAllocationMethod'] as String,
      publicIPPrefix: map['publicIPPrefix'] == null ? null : SubResource.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : PublicIPAddressSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

