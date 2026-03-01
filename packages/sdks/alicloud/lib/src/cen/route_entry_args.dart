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
    required pulumi.Output<String> cidrBlock,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> routeTableId,
  }) :
      cidrBlock = pulumi.Input.asInput<String>(cidrBlock),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      routeTableId = pulumi.Input.asInput<String>(routeTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'instanceId': instanceId,
      'routeTableId': routeTableId,
    };
  }

  factory RouteEntryArgs.fromMap(Map<String, dynamic> map) {
    return RouteEntryArgs(
      cidrBlock: pulumi.Output.create<String>(map['cidrBlock'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      routeTableId: pulumi.Output.create<String>(map['routeTableId'] as String),
    );
  }
}

