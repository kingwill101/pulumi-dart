// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcCidrBlockAssociation {
  /// Association ID for the IPv4 CIDR block.
  final pulumi.Input<String> associationId;
  /// Cidr block of the desired VPC.
  final pulumi.Input<String> cidrBlock;
  /// Current state of the desired VPC.
  /// Can be either `"pending"` or `"available"`.
  final pulumi.Input<String> state;

  /// Creates a new [GetVpcCidrBlockAssociation].
  /// [associationId] Association ID for the IPv4 CIDR block.
  /// [cidrBlock] Cidr block of the desired VPC.
  /// [state] Current state of the desired VPC.
  const GetVpcCidrBlockAssociation({
    required this.associationId,
    required this.cidrBlock,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationId': associationId,
      'cidrBlock': cidrBlock,
      'state': state,
    };
  }

  factory GetVpcCidrBlockAssociation.fromMap(Map<String, dynamic> map) {
    return GetVpcCidrBlockAssociation(
      associationId: pulumi.Input.fromValue(map['associationId'] as String),
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
