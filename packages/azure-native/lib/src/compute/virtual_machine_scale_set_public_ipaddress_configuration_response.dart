// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_sku_response.dart';
import 'sub_resource_response.dart';
import 'virtual_machine_scale_set_ip_tag_response.dart';
import 'virtual_machine_scale_set_public_ipaddress_configuration_dns_settings_response.dart';

/// Describes a virtual machines scale set IP Configuration's PublicIPAddress configuration
class VirtualMachineScaleSetPublicIPAddressConfigurationResponse {
  /// Specify what happens to the public IP when the VM is deleted
  final String? deleteOption;
  /// The dns settings to be applied on the publicIP addresses .
  final VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse? dnsSettings;
  /// The idle timeout of the public IP address.
  final int? idleTimeoutInMinutes;
  /// The list of IP tags associated with the public IP address.
  final List<VirtualMachineScaleSetIpTagResponse>? ipTags;
  /// The publicIP address configuration name.
  final String name;
  /// Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  final String? publicIPAddressVersion;
  /// The PublicIPPrefix from which to allocate publicIP addresses.
  final SubResourceResponse? publicIPPrefix;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  final PublicIPAddressSkuResponse? sku;

  /// Creates a new [VirtualMachineScaleSetPublicIPAddressConfigurationResponse].
  /// [deleteOption] Specify what happens to the public IP when the VM is deleted
  /// [dnsSettings] The dns settings to be applied on the publicIP addresses .
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipTags] The list of IP tags associated with the public IP address.
  /// [name] The publicIP address configuration name.
  /// [publicIPAddressVersion] Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  /// [publicIPPrefix] The PublicIPPrefix from which to allocate publicIP addresses.
  /// [sku] Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  VirtualMachineScaleSetPublicIPAddressConfigurationResponse({
    this.deleteOption,
    this.dnsSettings,
    this.idleTimeoutInMinutes,
    this.ipTags,
    required this.name,
    this.publicIPAddressVersion,
    this.publicIPPrefix,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOption': ?deleteOption,
      'dnsSettings': ?dnsSettings == null ? null : dnsSettings!.toMap(),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?ipTags == null ? null : pulumi.Input.encodeList<VirtualMachineScaleSetIpTagResponse, Map<String, dynamic>>(ipTags!, (value) => value.toMap()),
      'name': name,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPPrefix': ?publicIPPrefix == null ? null : publicIPPrefix!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
    };
  }

  factory VirtualMachineScaleSetPublicIPAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetPublicIPAddressConfigurationResponse(
      deleteOption: map['deleteOption'] == null ? null : map['deleteOption'] as String,
      dnsSettings: map['dnsSettings'] == null ? null : VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      ipTags: map['ipTags'] == null ? null : pulumi.Input.decodeList<VirtualMachineScaleSetIpTagResponse>(map['ipTags'], (value) => VirtualMachineScaleSetIpTagResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : map['publicIPAddressVersion'] as String,
      publicIPPrefix: map['publicIPPrefix'] == null ? null : SubResourceResponse.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : PublicIPAddressSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

