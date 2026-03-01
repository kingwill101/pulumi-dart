// ignore_for_file: unused_element, unnecessary_cast


class FirewallVpcFirewallCenLocalVpcEniList {
  /// The ID of the instance of the ENI in the VPC.
  final String? eniId;
  /// The private IP address of the ENI in the VPC.
  final String? eniPrivateIpAddress;

  /// Creates a new [FirewallVpcFirewallCenLocalVpcEniList].
  /// [eniId] The ID of the instance of the ENI in the VPC.
  /// [eniPrivateIpAddress] The private IP address of the ENI in the VPC.
  FirewallVpcFirewallCenLocalVpcEniList({
    this.eniId,
    this.eniPrivateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eniId': ?eniId,
      'eniPrivateIpAddress': ?eniPrivateIpAddress,
    };
  }

  factory FirewallVpcFirewallCenLocalVpcEniList.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallCenLocalVpcEniList(
      eniId: map['eniId'] == null ? null : map['eniId'] as String,
      eniPrivateIpAddress: map['eniPrivateIpAddress'] == null ? null : map['eniPrivateIpAddress'] as String,
    );
  }
}

