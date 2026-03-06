// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcPeeringConnectionPeerIpv6CidrBlockSet {
  final pulumi.Input<String> ipv6CidrBlock;

  /// Creates a new [GetVpcPeeringConnectionPeerIpv6CidrBlockSet].
  /// [ipv6CidrBlock] Required.
  const GetVpcPeeringConnectionPeerIpv6CidrBlockSet({
    required this.ipv6CidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6CidrBlock': ipv6CidrBlock,
    };
  }

  factory GetVpcPeeringConnectionPeerIpv6CidrBlockSet.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionPeerIpv6CidrBlockSet(
      ipv6CidrBlock: pulumi.Input.fromValue(map['ipv6CidrBlock'] as String),
    );
  }
}

