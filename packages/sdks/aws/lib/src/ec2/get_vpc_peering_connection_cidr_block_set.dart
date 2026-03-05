// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcPeeringConnectionCidrBlockSet {
  /// Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String> cidrBlock;

  /// Creates a new [GetVpcPeeringConnectionCidrBlockSet].
  /// [cidrBlock] Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  GetVpcPeeringConnectionCidrBlockSet({
    required this.cidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
    };
  }

  factory GetVpcPeeringConnectionCidrBlockSet.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionCidrBlockSet(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
    );
  }
}

