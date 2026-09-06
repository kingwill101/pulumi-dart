// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NSX DHCP Relay
class WorkloadNetworkDhcpRelay {
  /// Type of DHCP: SERVER or RELAY.
  /// Expected value is 'RELAY'.
  final pulumi.Input<String> dhcpType;
  /// Display name of the DHCP entity.
  final pulumi.Input<String?>? displayName;
  /// NSX revision number.
  final pulumi.Input<double?>? revision;
  /// DHCP Relay Addresses. Max 3.
  final pulumi.Input<List<String>?>? serverAddresses;

  /// Creates a new [WorkloadNetworkDhcpRelay].
  /// [dhcpType] Type of DHCP: SERVER or RELAY.
  /// [displayName] Display name of the DHCP entity.
  /// [revision] NSX revision number.
  /// [serverAddresses] DHCP Relay Addresses. Max 3.
  const WorkloadNetworkDhcpRelay({
    required this.dhcpType,
    this.displayName,
    this.revision,
    this.serverAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpType': dhcpType,
      'displayName': ?displayName,
      'revision': ?revision,
      'serverAddresses': ?serverAddresses,
    };
  }

  factory WorkloadNetworkDhcpRelay.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkDhcpRelay(
      dhcpType: pulumi.Input.fromValue(map['dhcpType'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      serverAddresses: (() { final guardedValue = map['serverAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
