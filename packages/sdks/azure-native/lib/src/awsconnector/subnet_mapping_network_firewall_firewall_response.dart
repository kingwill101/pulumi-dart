// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SubnetMapping
class SubnetMappingNetworkFirewallFirewallResponse {
  /// A IPAddressType
  final pulumi.Input<String?>? ipAddressType;
  /// A SubnetId.
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [SubnetMappingNetworkFirewallFirewallResponse].
  /// [ipAddressType] A IPAddressType
  /// [subnetId] A SubnetId.
  const SubnetMappingNetworkFirewallFirewallResponse({
    this.ipAddressType,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'subnetId': ?subnetId,
    };
  }

  factory SubnetMappingNetworkFirewallFirewallResponse.fromMap(Map<String, dynamic> map) {
    return SubnetMappingNetworkFirewallFirewallResponse(
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
