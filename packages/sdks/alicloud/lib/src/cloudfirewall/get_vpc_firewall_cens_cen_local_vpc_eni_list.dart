// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcFirewallCensCenLocalVpcEniList {
  final pulumi.Input<String> eniId;
  final pulumi.Input<String> eniPrivateIpAddress;

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
      eniId: (map['eniId'] as String).input(),
      eniPrivateIpAddress: (map['eniPrivateIpAddress'] as String).input(),
    );
  }
}

