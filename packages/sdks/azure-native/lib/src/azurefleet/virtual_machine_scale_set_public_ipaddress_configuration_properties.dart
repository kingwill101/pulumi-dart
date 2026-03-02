// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';
import 'virtual_machine_scale_set_ip_tag.dart';
import 'virtual_machine_scale_set_public_ipaddress_configuration_dns_settings.dart';

/// Describes a virtual machines scale set IP Configuration's PublicIPAddress
/// configuration
class VirtualMachineScaleSetPublicIPAddressConfigurationProperties {
  /// Specify what happens to the public IP when the VM is deleted
  final pulumi.Input<String>? deleteOption;
  /// The dns settings to be applied on the publicIP addresses .
  final pulumi.Input<VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings>? dnsSettings;
  /// The idle timeout of the public IP address.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The list of IP tags associated with the public IP address.
  final pulumi.Input<List<VirtualMachineScaleSetIpTag>>? ipTags;
  /// Available from Api-Version 2019-07-01 onwards, it represents whether the
  /// specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible
  /// values are: 'IPv4' and 'IPv6'.
  final pulumi.Input<String>? publicIPAddressVersion;
  /// The PublicIPPrefix from which to allocate publicIP addresses.
  final pulumi.Input<SubResource>? publicIPPrefix;

  /// Creates a new [VirtualMachineScaleSetPublicIPAddressConfigurationProperties].
  /// [deleteOption] Specify what happens to the public IP when the VM is deleted
  /// [dnsSettings] The dns settings to be applied on the publicIP addresses .
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipTags] The list of IP tags associated with the public IP address.
  /// [publicIPAddressVersion] Available from Api-Version 2019-07-01 onwards, it represents whether the
  /// [publicIPPrefix] The PublicIPPrefix from which to allocate publicIP addresses.
  VirtualMachineScaleSetPublicIPAddressConfigurationProperties({
    this.deleteOption,
    this.dnsSettings,
    this.idleTimeoutInMinutes,
    this.ipTags,
    this.publicIPAddressVersion,
    this.publicIPPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOption': ?deleteOption,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineScaleSetIpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<VirtualMachineScaleSetIpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetPublicIPAddressConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetPublicIPAddressConfigurationProperties(
      deleteOption: map['deleteOption'] == null ? null : (map['deleteOption'] as String).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes'] as int).input(),
      ipTags: map['ipTags'] == null ? null : (pulumi.Input.decodeList<VirtualMachineScaleSetIpTag>(map['ipTags'], (value) => VirtualMachineScaleSetIpTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : (map['publicIPAddressVersion'] as String).input(),
      publicIPPrefix: map['publicIPPrefix'] == null ? null : (SubResource.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

