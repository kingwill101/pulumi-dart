// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_sku_response.dart';
import 'sub_resource_response.dart';
import 'virtual_machine_ip_tag_response.dart';
import 'virtual_machine_public_ipaddress_dns_settings_configuration_response.dart';

/// Describes a virtual machines IP Configuration's PublicIPAddress configuration
class VirtualMachinePublicIPAddressConfigurationResponse {
  /// Specify what happens to the public IP address when the VM is deleted
  final pulumi.Input<String>? deleteOption;
  /// The dns settings to be applied on the publicIP addresses .
  final pulumi.Input<VirtualMachinePublicIPAddressDnsSettingsConfigurationResponse>? dnsSettings;
  /// The idle timeout of the public IP address.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The list of IP tags associated with the public IP address.
  final pulumi.Input<List<VirtualMachineIpTagResponse>>? ipTags;
  /// The publicIP address configuration name.
  final pulumi.Input<String> name;
  /// Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  final pulumi.Input<String>? publicIPAddressVersion;
  /// Specify the public IP allocation type
  final pulumi.Input<String>? publicIPAllocationMethod;
  /// The PublicIPPrefix from which to allocate publicIP addresses.
  final pulumi.Input<SubResourceResponse>? publicIPPrefix;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  final pulumi.Input<PublicIPAddressSkuResponse>? sku;

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
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePublicIPAddressDnsSettingsConfigurationResponse, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineIpTagResponse>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<VirtualMachineIpTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePublicIPAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePublicIPAddressConfigurationResponse(
      deleteOption: map['deleteOption'] == null ? null : (map['deleteOption']! as String).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (VirtualMachinePublicIPAddressDnsSettingsConfigurationResponse.fromMap((map['dnsSettings']! as Map).cast<String, dynamic>())).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes']! as int).input(),
      ipTags: map['ipTags'] == null ? null : (pulumi.Input.decodeList<VirtualMachineIpTagResponse>(map['ipTags']!, (value) => VirtualMachineIpTagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : (map['publicIPAddressVersion']! as String).input(),
      publicIPAllocationMethod: map['publicIPAllocationMethod'] == null ? null : (map['publicIPAllocationMethod']! as String).input(),
      publicIPPrefix: map['publicIPPrefix'] == null ? null : (SubResourceResponse.fromMap((map['publicIPPrefix']! as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (PublicIPAddressSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

