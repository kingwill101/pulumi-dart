// ignore_for_file: unused_element, unnecessary_cast


class GetVpcFirewallCensCenLocalVpcEniList {
  final String eniId;
  final String eniPrivateIpAddress;

  /// Creates a new [GetVpcFirewallCensCenLocalVpcEniList].
  /// [eniId] Required.
  /// [eniPrivateIpAddress] Required.
  GetVpcFirewallCensCenLocalVpcEniList({
    required this.eniId,
    required this.eniPrivateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eniId': eniId,
      'eniPrivateIpAddress': eniPrivateIpAddress,
    };
  }

  factory GetVpcFirewallCensCenLocalVpcEniList.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallCensCenLocalVpcEniList(
      eniId: map['eniId'] as String,
      eniPrivateIpAddress: map['eniPrivateIpAddress'] as String,
    );
  }
}

