// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcPeeringConnectionIpv6CidrBlockSet {
  final pulumi.Input<String> ipv6CidrBlock;

  /// Creates a new [GetVpcPeeringConnectionIpv6CidrBlockSet].
  /// [ipv6CidrBlock] Required.
  GetVpcPeeringConnectionIpv6CidrBlockSet({
    required this.ipv6CidrBlock,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6CidrBlock': ipv6CidrBlock,
    };
  }

  factory GetVpcPeeringConnectionIpv6CidrBlockSet.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionIpv6CidrBlockSet(
      ipv6CidrBlock: pulumi.Input.fromValue(map['ipv6CidrBlock'] as String),
    );
  }
}

