// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList {
  /// The target network segment of the local VPC.
  final pulumi.Input<String> localDestinationCidr;

  /// The ID of the next-hop instance in the local VPC.
  final pulumi.Input<String> localNextHopInstanceId;

  /// Creates a new [FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList].
  /// [localDestinationCidr] The target network segment of the local VPC.
  /// [localNextHopInstanceId] The ID of the next-hop instance in the local VPC.
  FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList({
    required this.localDestinationCidr,
    required this.localNextHopInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localDestinationCidr': localDestinationCidr,
      'localNextHopInstanceId': localNextHopInstanceId,
    };
  }

  factory FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList(
      localDestinationCidr: pulumi.Input.fromValue(
        map['localDestinationCidr'] as String,
      ),
      localNextHopInstanceId: pulumi.Input.fromValue(
        map['localNextHopInstanceId'] as String,
      ),
    );
  }
}
