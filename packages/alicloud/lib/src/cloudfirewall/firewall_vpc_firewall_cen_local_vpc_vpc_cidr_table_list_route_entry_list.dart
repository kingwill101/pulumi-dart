// ignore_for_file: unused_element, unnecessary_cast


class FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList {
  /// The target network segment of the VPC.
  final String? destinationCidr;
  /// The ID of the next hop instance in the VPC.
  final String? nextHopInstanceId;

  /// Creates a new [FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList].
  /// [destinationCidr] The target network segment of the VPC.
  /// [nextHopInstanceId] The ID of the next hop instance in the VPC.
  FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList({
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
      destinationCidr: map['destinationCidr'] == null ? null : map['destinationCidr'] as String,
      nextHopInstanceId: map['nextHopInstanceId'] == null ? null : map['nextHopInstanceId'] as String,
    );
  }
}

