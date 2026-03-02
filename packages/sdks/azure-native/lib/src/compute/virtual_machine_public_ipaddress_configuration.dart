// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_sku.dart';
import 'sub_resource.dart';
import 'virtual_machine_ip_tag.dart';
import 'virtual_machine_public_ipaddress_dns_settings_configuration.dart';

/// Describes a virtual machines IP Configuration's PublicIPAddress configuration
class VirtualMachinePublicIPAddressConfiguration {
  /// Specify what happens to the public IP address when the VM is deleted
  final pulumi.Input<String>? deleteOption;
  /// The dns settings to be applied on the publicIP addresses .
  final pulumi.Input<VirtualMachinePublicIPAddressDnsSettingsConfiguration>? dnsSettings;
  /// The idle timeout of the public IP address.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The list of IP tags associated with the public IP address.
  final pulumi.Input<List<VirtualMachineIpTag>>? ipTags;
  /// The publicIP address configuration name.
  final pulumi.Input<String> name;
  /// Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  final pulumi.Input<String>? publicIPAddressVersion;
  /// Specify the public IP allocation type
  final pulumi.Input<String>? publicIPAllocationMethod;
  /// The PublicIPPrefix from which to allocate publicIP addresses.
  final pulumi.Input<SubResource>? publicIPPrefix;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  final pulumi.Input<PublicIPAddressSku>? sku;

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
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePublicIPAddressDnsSettingsConfiguration, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineIpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<VirtualMachineIpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePublicIPAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePublicIPAddressConfiguration(
      deleteOption: map['deleteOption'] == null ? null : (map['deleteOption'] as String).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (VirtualMachinePublicIPAddressDnsSettingsConfiguration.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes'] as int).input(),
      ipTags: map['ipTags'] == null ? null : (pulumi.Input.decodeList<VirtualMachineIpTag>(map['ipTags'], (value) => VirtualMachineIpTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : (map['publicIPAddressVersion'] as String).input(),
      publicIPAllocationMethod: map['publicIPAllocationMethod'] == null ? null : (map['publicIPAllocationMethod'] as String).input(),
      publicIPPrefix: map['publicIPPrefix'] == null ? null : (SubResource.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (PublicIPAddressSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

