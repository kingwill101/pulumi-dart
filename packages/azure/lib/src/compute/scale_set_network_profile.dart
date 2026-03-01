// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_network_profile_dns_settings.dart';
import 'scale_set_network_profile_ip_configuration.dart';

class ScaleSetNetworkProfile {
  /// Specifies whether to enable accelerated networking or not.
  final bool? acceleratedNetworking;
  /// A `dns_settings` block as documented below.
  final ScaleSetNetworkProfileDnsSettings? dnsSettings;
  /// An `ip_configuration` block as documented below.
  final List<ScaleSetNetworkProfileIpConfiguration> ipConfigurations;
  /// Whether IP forwarding is enabled on this NIC. Defaults to `false`.
  final bool? ipForwarding;
  /// Specifies the name of the network interface configuration.
  final String name;
  /// Specifies the identifier for the network security group.
  final String? networkSecurityGroupId;
  /// Indicates whether network interfaces created from the network interface configuration will be the primary NIC of the VM.
  final bool primary;

  /// Creates a new [ScaleSetNetworkProfile].
  /// [acceleratedNetworking] Specifies whether to enable accelerated networking or not.
  /// [dnsSettings] A `dns_settings` block as documented below.
  /// [ipConfigurations] An `ip_configuration` block as documented below.
  /// [ipForwarding] Whether IP forwarding is enabled on this NIC. Defaults to `false`.
  /// [name] Specifies the name of the network interface configuration.
  /// [networkSecurityGroupId] Specifies the identifier for the network security group.
  /// [primary] Indicates whether network interfaces created from the network interface configuration will be the primary NIC of the VM.
  ScaleSetNetworkProfile({
    this.acceleratedNetworking,
    this.dnsSettings,
    required this.ipConfigurations,
    this.ipForwarding,
    required this.name,
    this.networkSecurityGroupId,
    required this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworking': ?acceleratedNetworking,
      'dnsSettings': ?dnsSettings == null ? null : dnsSettings!.toMap(),
      'ipConfigurations': pulumi.Input.encodeList<ScaleSetNetworkProfileIpConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'ipForwarding': ?ipForwarding,
      'name': name,
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'primary': primary,
    };
  }

  factory ScaleSetNetworkProfile.fromMap(Map<String, dynamic> map) {
    return ScaleSetNetworkProfile(
      acceleratedNetworking: map['acceleratedNetworking'] == null ? null : map['acceleratedNetworking'] as bool,
      dnsSettings: map['dnsSettings'] == null ? null : ScaleSetNetworkProfileDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      ipConfigurations: pulumi.Input.decodeList<ScaleSetNetworkProfileIpConfiguration>(map['ipConfigurations'], (value) => ScaleSetNetworkProfileIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      ipForwarding: map['ipForwarding'] == null ? null : map['ipForwarding'] as bool,
      name: map['name'] as String,
      networkSecurityGroupId: map['networkSecurityGroupId'] == null ? null : map['networkSecurityGroupId'] as String,
      primary: map['primary'] as bool,
    );
  }
}

