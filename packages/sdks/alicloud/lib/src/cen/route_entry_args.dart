// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_route_entry_route_entry_args_doc}
/// The set of arguments for RouteEntry.
/// {@endtemplate}
/// {@macro pulumi_cen_route_entry_route_entry_args_doc}
class RouteEntryArgs {
  /// The destination CIDR block of the route entry to publish.
  ///
  /// ->**NOTE:** The "alicloud_cen_instance_route_entries" resource depends on the related "alicloud.cen.InstanceAttachment" resource.
  ///
  /// ->**NOTE:** The "alicloud.cen.InstanceAttachment" resource should depend on the related "alicloud.vpc.Switch" resource.
  final pulumi.Input<String> cidrBlock;
  /// The ID of the CEN.
  final pulumi.Input<String> instanceId;
  /// The route table of the attached VBR or VPC.
  final pulumi.Input<String> routeTableId;

  /// Creates a new [RouteEntryArgs].
  /// [cidrBlock] The destination CIDR block of the route entry to publish.
  /// [instanceId] The ID of the CEN.
  /// [routeTableId] The route table of the attached VBR or VPC.
  RouteEntryArgs({
    required this.cidrBlock,
    required this.instanceId,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'instanceId': instanceId,
      'routeTableId': routeTableId,
    };
  }

  factory RouteEntryArgs.fromMap(Map<String, dynamic> map) {
    return RouteEntryArgs(
      cidrBlock: (map['cidrBlock'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      routeTableId: (map['routeTableId'] as String).input(),
    );
  }
}

