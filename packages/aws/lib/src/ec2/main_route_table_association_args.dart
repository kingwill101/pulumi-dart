// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_main_route_table_association_main_route_table_association_args_doc}
/// The set of arguments for MainRouteTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_main_route_table_association_main_route_table_association_args_doc}
class MainRouteTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the Route Table to set as the new
  /// main route table for the target VPC
  final pulumi.Input<String> routeTableId;

  /// The ID of the VPC whose main route table should be set
  final pulumi.Input<String> vpcId;

  /// Creates a new [MainRouteTableAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the Route Table to set as the new
  /// [vpcId] The ID of the VPC whose main route table should be set
  MainRouteTableAssociationArgs({
    String? region,
    required String routeTableId,
    required String vpcId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        routeTableId = pulumi.Input.asInput<String>(routeTableId),
        vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeTableId'] = routeTableId;
    map['vpcId'] = vpcId;
    return map;
  }

  factory MainRouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MainRouteTableAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      routeTableId: map['routeTableId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
