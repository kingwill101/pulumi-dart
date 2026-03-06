// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcPeeringConnectionPeerCidrBlockSet {
  /// Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String> cidrBlock;

  /// Creates a new [GetVpcPeeringConnectionPeerCidrBlockSet].
  /// [cidrBlock] Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  const GetVpcPeeringConnectionPeerCidrBlockSet({
    required this.cidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
    };
  }

  factory GetVpcPeeringConnectionPeerCidrBlockSet.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionPeerCidrBlockSet(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
    );
  }
}

