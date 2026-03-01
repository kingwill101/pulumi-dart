// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_sku_response.dart';
import 'sub_resource_response.dart';
import 'virtual_machine_ip_tag_response.dart';
import 'virtual_machine_public_ipaddress_dns_settings_configuration_response.dart';

/// Describes a virtual machines IP Configuration's PublicIPAddress configuration
class VirtualMachinePublicIPAddressConfigurationResponse {
  /// Specify what happens to the public IP address when the VM is deleted
  final String? deleteOption;
  /// The dns settings to be applied on the publicIP addresses .
  final VirtualMachinePublicIPAddressDnsSettingsConfigurationResponse? dnsSettings;
  /// The idle timeout of the public IP address.
  final int? idleTimeoutInMinutes;
  /// The list of IP tags associated with the public IP address.
  final List<VirtualMachineIpTagResponse>? ipTags;
  /// The publicIP address configuration name.
  final String name;
  /// Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  final String? publicIPAddressVersion;
  /// Specify the public IP allocation type
  final String? publicIPAllocationMethod;
  /// The PublicIPPrefix from which to allocate publicIP addresses.
  final SubResourceResponse? publicIPPrefix;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  final PublicIPAddressSkuResponse? sku;

  /// Creates a new [VirtualMachinePublicIPAddressConfigurationResponse].
  /// [deleteOption] Specify what happens to the public IP address when the VM is deleted
  /// [dnsSettings] The dns settings to be applied on the publicIP addresses .
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipTags] The list of IP tags associated with the public IP address.
  /// [name] The publicIP address configuration name.
  /// [publicIPAddressVersion] Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  /// [publicIPAllocationMethod] Specify the public IP allocation type
  /// [publicIPPrefix] The PublicIPPrefix from which to allocate publicIP addresses.
  /// [sku] Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  VirtualMachinePublicIPAddressConfigurationResponse({
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
      'ipTags': ?ipTags == null ? null : pulumi.Input.encodeList<VirtualMachineIpTagResponse, Map<String, dynamic>>(ipTags!, (value) => value.toMap()),
      'name': name,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?publicIPPrefix == null ? null : publicIPPrefix!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
    };
  }

  factory VirtualMachinePublicIPAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePublicIPAddressConfigurationResponse(
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      dnsSettings: map['dnsSettings'] == null ? null : VirtualMachinePublicIPAddressDnsSettingsConfigurationResponse.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      ipTags: map['ipTags'] == null ? null : pulumi.Input.decodeList<VirtualMachineIpTagResponse>(map['ipTags'], (value) => VirtualMachineIpTagResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : map['publicIPAddressVersion'] as String,
      publicIPAllocationMethod: map['publicIPAllocationMethod'] == null ? null : map['publicIPAllocationMethod'] as String,
      publicIPPrefix: map['publicIPPrefix'] == null ? null : SubResourceResponse.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : PublicIPAddressSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

