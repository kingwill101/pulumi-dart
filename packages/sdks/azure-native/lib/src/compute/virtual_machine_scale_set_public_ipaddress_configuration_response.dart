// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_sku_response.dart';
import 'sub_resource_response.dart';
import 'virtual_machine_scale_set_ip_tag_response.dart';
import 'virtual_machine_scale_set_public_ipaddress_configuration_dns_settings_response.dart';

/// Describes a virtual machines scale set IP Configuration's PublicIPAddress configuration
class VirtualMachineScaleSetPublicIPAddressConfigurationResponse {
  /// Specify what happens to the public IP when the VM is deleted
  final pulumi.Input<String?>? deleteOption;
  /// The dns settings to be applied on the publicIP addresses .
  final pulumi.Input<VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse?>? dnsSettings;
  /// The idle timeout of the public IP address.
  final pulumi.Input<int?>? idleTimeoutInMinutes;
  /// The list of IP tags associated with the public IP address.
  final pulumi.Input<List<VirtualMachineScaleSetIpTagResponse>?>? ipTags;
  /// The publicIP address configuration name.
  final pulumi.Input<String> name;
  /// Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  final pulumi.Input<String?>? publicIPAddressVersion;
  /// The PublicIPPrefix from which to allocate publicIP addresses.
  final pulumi.Input<SubResourceResponse?>? publicIPPrefix;
  /// Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  final pulumi.Input<PublicIPAddressSkuResponse?>? sku;

  /// Creates a new [VirtualMachineScaleSetPublicIPAddressConfigurationResponse].
  /// [deleteOption] Specify what happens to the public IP when the VM is deleted
  /// [dnsSettings] The dns settings to be applied on the publicIP addresses .
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipTags] The list of IP tags associated with the public IP address.
  /// [name] The publicIP address configuration name.
  /// [publicIPAddressVersion] Available from Api-Version 2019-07-01 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
  /// [publicIPPrefix] The PublicIPPrefix from which to allocate publicIP addresses.
  /// [sku] Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
  const VirtualMachineScaleSetPublicIPAddressConfigurationResponse({
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
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineScaleSetIpTagResponse>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<VirtualMachineScaleSetIpTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetPublicIPAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetPublicIPAddressConfigurationResponse(
      deleteOption: (() { final guardedValue = map['deleteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ipTags: (() { final guardedValue = map['ipTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineScaleSetIpTagResponse>(guardedValue, (value) => VirtualMachineScaleSetIpTagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      publicIPAddressVersion: (() { final guardedValue = map['publicIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPPrefix: (() { final guardedValue = map['publicIPPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
