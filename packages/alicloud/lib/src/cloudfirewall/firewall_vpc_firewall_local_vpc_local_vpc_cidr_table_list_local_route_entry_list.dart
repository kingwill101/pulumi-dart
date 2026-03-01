// ignore_for_file: unused_element, unnecessary_cast


class FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList {
  /// The target network segment of the local VPC.
  final String localDestinationCidr;
  /// The ID of the next-hop instance in the local VPC.
  final String localNextHopInstanceId;

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

  factory FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList(
      localDestinationCidr: map['localDestinationCidr'] as String,
      localNextHopInstanceId: map['localNextHopInstanceId'] as String,
    );
  }
}

