// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteEntry resources.
class RouteEntryState {
  /// The destination CIDR block of the route entry to publish.
  ///
  /// ->**NOTE:** The "alicloud_cen_instance_route_entries" resource depends on the related "alicloud.cen.InstanceAttachment" resource.
  ///
  /// ->**NOTE:** The "alicloud.cen.InstanceAttachment" resource should depend on the related "alicloud.vpc.Switch" resource.
  final pulumi.Input<String>? cidrBlock;
  /// The ID of the CEN.
  final pulumi.Input<String>? instanceId;
  /// The route table of the attached VBR or VPC.
  final pulumi.Input<String>? routeTableId;

  /// Creates a new [RouteEntryState].
  /// [cidrBlock] The destination CIDR block of the route entry to publish.
  /// [instanceId] The ID of the CEN.
  /// [routeTableId] The route table of the attached VBR or VPC.
  RouteEntryState({
    this.cidrBlock,
    this.instanceId,
    this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'instanceId': ?instanceId,
      'routeTableId': ?routeTableId,
    };
  }

  factory RouteEntryState.fromMap(Map<String, dynamic> map) {
    return RouteEntryState(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      routeTableId: map['routeTableId'] == null ? null : (map['routeTableId']! as String).input(),
    );
  }
}

