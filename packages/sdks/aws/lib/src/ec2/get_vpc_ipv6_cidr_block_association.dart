// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcIpv6CidrBlockAssociation {
  /// Association ID for the IPv4 CIDR block.
  final pulumi.Input<String> associationId;
  /// The source that allocated the IP address space. Values: `amazon`, `byoip`, `none`.
  final pulumi.Input<String> ipSource;
  /// Indicates whether the address is `public` or `private`.
  final pulumi.Input<String> ipv6AddressAttribute;
  /// IPv6 CIDR block for the association.
  final pulumi.Input<String> ipv6CidrBlock;
  /// Name of IPv6 address pool from which the IPv6 CIDR block is allocated.
  final pulumi.Input<String> ipv6Pool;
  /// Name of association's network border group.
  final pulumi.Input<String> networkBorderGroup;
  /// Current state of the desired VPC.
  /// Can be either `"pending"` or `"available"`.
  final pulumi.Input<String> state;

  /// Creates a new [GetVpcIpv6CidrBlockAssociation].
  /// [associationId] Association ID for the IPv4 CIDR block.
  /// [ipSource] The source that allocated the IP address space. Values: `amazon`, `byoip`, `none`.
  /// [ipv6AddressAttribute] Indicates whether the address is `public` or `private`.
  /// [ipv6CidrBlock] IPv6 CIDR block for the association.
  /// [ipv6Pool] Name of IPv6 address pool from which the IPv6 CIDR block is allocated.
  /// [networkBorderGroup] Name of association's network border group.
  /// [state] Current state of the desired VPC.
  const GetVpcIpv6CidrBlockAssociation({
    required this.associationId,
    required this.ipSource,
    required this.ipv6AddressAttribute,
    required this.ipv6CidrBlock,
    required this.ipv6Pool,
    required this.networkBorderGroup,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationId': associationId,
      'ipSource': ipSource,
      'ipv6AddressAttribute': ipv6AddressAttribute,
      'ipv6CidrBlock': ipv6CidrBlock,
      'ipv6Pool': ipv6Pool,
      'networkBorderGroup': networkBorderGroup,
      'state': state,
    };
  }

  factory GetVpcIpv6CidrBlockAssociation.fromMap(Map<String, dynamic> map) {
    return GetVpcIpv6CidrBlockAssociation(
      associationId: pulumi.Input.fromValue(map['associationId'] as String),
      ipSource: pulumi.Input.fromValue(map['ipSource'] as String),
      ipv6AddressAttribute: pulumi.Input.fromValue(map['ipv6AddressAttribute'] as String),
      ipv6CidrBlock: pulumi.Input.fromValue(map['ipv6CidrBlock'] as String),
      ipv6Pool: pulumi.Input.fromValue(map['ipv6Pool'] as String),
      networkBorderGroup: pulumi.Input.fromValue(map['networkBorderGroup'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
