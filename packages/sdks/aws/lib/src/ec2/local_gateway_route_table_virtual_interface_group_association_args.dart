// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_local_gateway_route_table_virtual_interface_group_association_local_gateway_route_table_virtual_interface_group_association_args_doc}
/// The set of arguments for LocalGatewayRouteTableVirtualInterfaceGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_local_gateway_route_table_virtual_interface_group_association_local_gateway_route_table_virtual_interface_group_association_args_doc}
class LocalGatewayRouteTableVirtualInterfaceGroupAssociationArgs {
  /// Identifier of EC2 Local Gateway Route Table.
  final pulumi.Input<String> localGatewayRouteTableId;
  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> localGatewayVirtualInterfaceGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [LocalGatewayRouteTableVirtualInterfaceGroupAssociationArgs].
  /// [localGatewayRouteTableId] Identifier of EC2 Local Gateway Route Table.
  /// [localGatewayVirtualInterfaceGroupId] Identifier of EC2 Local Gateway Virtual Interface Group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const LocalGatewayRouteTableVirtualInterfaceGroupAssociationArgs({
    required this.localGatewayRouteTableId,
    required this.localGatewayVirtualInterfaceGroupId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localGatewayRouteTableId': localGatewayRouteTableId,
      'localGatewayVirtualInterfaceGroupId': localGatewayVirtualInterfaceGroupId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory LocalGatewayRouteTableVirtualInterfaceGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return LocalGatewayRouteTableVirtualInterfaceGroupAssociationArgs(
      localGatewayRouteTableId: pulumi.Input.fromValue(map['localGatewayRouteTableId'] as String),
      localGatewayVirtualInterfaceGroupId: pulumi.Input.fromValue(map['localGatewayVirtualInterfaceGroupId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
