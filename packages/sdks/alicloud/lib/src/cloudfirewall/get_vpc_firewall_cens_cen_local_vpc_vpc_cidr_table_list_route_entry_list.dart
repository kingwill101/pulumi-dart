// ignore_for_file: unused_element, unnecessary_cast


class GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList {
  /// The target network segment of the VPC.
  final String destinationCidr;
  /// The ID of the next hop instance in the VPC.
  final String nextHopInstanceId;

  /// Creates a new [GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList].
  /// [destinationCidr] The target network segment of the VPC.
  /// [nextHopInstanceId] The ID of the next hop instance in the VPC.
  GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList({
    required this.destinationCidr,
    required this.nextHopInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': destinationCidr,
      'nextHopInstanceId': nextHopInstanceId,
    };
  }

  factory GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList(
      destinationCidr: map['destinationCidr'] as String,
      nextHopInstanceId: map['nextHopInstanceId'] as String,
    );
  }
}

