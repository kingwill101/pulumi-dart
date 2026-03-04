// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallVpcFirewallCenLocalVpcEniList {
  /// The ID of the instance of the ENI in the VPC.
  final pulumi.Input<String>? eniId;

  /// The private IP address of the ENI in the VPC.
  final pulumi.Input<String>? eniPrivateIpAddress;

  /// Creates a new [FirewallVpcFirewallCenLocalVpcEniList].
  /// [eniId] The ID of the instance of the ENI in the VPC.
  /// [eniPrivateIpAddress] The private IP address of the ENI in the VPC.
  FirewallVpcFirewallCenLocalVpcEniList({this.eniId, this.eniPrivateIpAddress});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eniId': ?eniId,
      'eniPrivateIpAddress': ?eniPrivateIpAddress,
    };
  }

  factory FirewallVpcFirewallCenLocalVpcEniList.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallVpcFirewallCenLocalVpcEniList(
      eniId: (() {
        final guardedValue = map['eniId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eniPrivateIpAddress: (() {
        final guardedValue = map['eniPrivateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
