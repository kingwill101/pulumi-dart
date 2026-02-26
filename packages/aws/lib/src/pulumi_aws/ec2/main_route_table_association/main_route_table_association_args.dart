// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MainRouteTableAssociation.
class MainRouteTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the Route Table to set as the new
  /// main route table for the target VPC
  final Input<String> routeTableId;

  /// The ID of the VPC whose main route table should be set
  final Input<String> vpcId;

  MainRouteTableAssociationArgs({
    this.region,
    required this.routeTableId,
    required this.vpcId,
  });

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
      region: Input.asOptionalInput<String>(map['region']),
      routeTableId: Input.asInput<String>(map['routeTableId']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
