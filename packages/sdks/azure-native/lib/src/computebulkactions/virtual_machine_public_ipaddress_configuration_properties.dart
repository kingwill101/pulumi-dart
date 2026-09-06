// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';
import 'virtual_machine_ip_tag.dart';
import 'virtual_machine_public_ipaddress_dns_settings_configuration.dart';

/// Describes a virtual machines IP Configuration's PublicIPAddress configuration
class VirtualMachinePublicIPAddressConfigurationProperties {
  /// Specify what happens to the public IP address when the VM is deleted
  final pulumi.Input<dynamic>? deleteOption;
  /// The dns settings to be applied on the publicIP addresses .
  final pulumi.Input<VirtualMachinePublicIPAddressDnsSettingsConfiguration?>? dnsSettings;
  /// The idle timeout of the public IP address.
  final pulumi.Input<int?>? idleTimeoutInMinutes;
  /// The list of IP tags associated with the public IP address.
  final pulumi.Input<List<VirtualMachineIpTag>?>? ipTags;
  /// Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  final pulumi.Input<dynamic>? publicIPAddressVersion;
  /// Specify the public IP allocation type
  final pulumi.Input<dynamic>? publicIPAllocationMethod;
  /// The PublicIPPrefix from which to allocate publicIP addresses.
  final pulumi.Input<SubResource?>? publicIPPrefix;

  /// Creates a new [VirtualMachinePublicIPAddressConfigurationProperties].
  /// [deleteOption] Specify what happens to the public IP address when the VM is deleted
  /// [dnsSettings] The dns settings to be applied on the publicIP addresses .
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipTags] The list of IP tags associated with the public IP address.
  /// [publicIPAddressVersion] Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  /// [publicIPAllocationMethod] Specify the public IP allocation type
  /// [publicIPPrefix] The PublicIPPrefix from which to allocate publicIP addresses.
  const VirtualMachinePublicIPAddressConfigurationProperties({
    this.deleteOption,
    this.dnsSettings,
    this.idleTimeoutInMinutes,
    this.ipTags,
    this.publicIPAddressVersion,
    this.publicIPAllocationMethod,
    this.publicIPPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOption': ?deleteOption,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePublicIPAddressDnsSettingsConfiguration, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineIpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<VirtualMachineIpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePublicIPAddressConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePublicIPAddressConfigurationProperties(
      deleteOption: (() { final guardedValue = map['deleteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePublicIPAddressDnsSettingsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ipTags: (() { final guardedValue = map['ipTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineIpTag>(guardedValue, (value) => VirtualMachineIpTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicIPAddressVersion: (() { final guardedValue = map['publicIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicIPAllocationMethod: (() { final guardedValue = map['publicIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicIPPrefix: (() { final guardedValue = map['publicIPPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
