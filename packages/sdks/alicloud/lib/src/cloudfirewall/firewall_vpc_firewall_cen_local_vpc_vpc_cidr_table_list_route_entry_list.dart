// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList {
  /// The target network segment of the VPC.
  final pulumi.Input<String>? destinationCidr;
  /// The ID of the next hop instance in the VPC.
  final pulumi.Input<String>? nextHopInstanceId;

  /// Creates a new [FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList].
  /// [destinationCidr] The target network segment of the VPC.
  /// [nextHopInstanceId] The ID of the next hop instance in the VPC.
  const FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList({
    this.destinationCidr,
    this.nextHopInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': ?destinationCidr,
      'nextHopInstanceId': ?nextHopInstanceId,
    };
  }

  factory FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList(
      destinationCidr: (() { final guardedValue = map['destinationCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopInstanceId: (() { final guardedValue = map['nextHopInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

