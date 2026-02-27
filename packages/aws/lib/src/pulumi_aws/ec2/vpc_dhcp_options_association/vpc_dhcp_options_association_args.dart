// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcDhcpOptionsAssociation.
class VpcDhcpOptionsAssociationArgs {
  /// The ID of the DHCP Options Set to associate to the VPC.
  final pulumi.Input<String> dhcpOptionsId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the VPC to which we would like to associate a DHCP Options Set.
  final pulumi.Input<String> vpcId;

  VpcDhcpOptionsAssociationArgs({
    required this.dhcpOptionsId,
    this.region,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dhcpOptionsId'] = dhcpOptionsId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcDhcpOptionsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcDhcpOptionsAssociationArgs(
      dhcpOptionsId: pulumi.Input.asInput<String>(map['dhcpOptionsId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}
