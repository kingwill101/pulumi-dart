// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteEntry resources.
class RouteEntryState {
  /// The destination CIDR block of the route entry to publish.
  ///
  /// -&gt;**NOTE:** The "alicloud_cen_instance_route_entries" resource depends on the related "alicloud.cen.InstanceAttachment" resource.
  ///
  /// -&gt;**NOTE:** The "alicloud.cen.InstanceAttachment" resource should depend on the related "alicloud.vpc.Switch" resource.
  final pulumi.Input<String>? cidrBlock;
  /// The ID of the CEN.
  final pulumi.Input<String>? instanceId;
  /// The route table of the attached VBR or VPC.
  final pulumi.Input<String>? routeTableId;

  /// Creates a new [RouteEntryState].
  /// [cidrBlock] The destination CIDR block of the route entry to publish.
  /// [instanceId] The ID of the CEN.
  /// [routeTableId] The route table of the attached VBR or VPC.
  const RouteEntryState({
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
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

