// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_server_vpc_association_timeouts/route_server_vpc_association_timeouts.dart';

/// The set of arguments for RouteServerVpcAssociation.
class RouteServerVpcAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The unique identifier for the route server to be associated.
  final pulumi.Input<String> routeServerId;
  final pulumi.Input<RouteServerVpcAssociationTimeouts>? timeouts;

  /// The ID of the VPC to associate with the route server.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;

  RouteServerVpcAssociationArgs({
    this.region,
    required this.routeServerId,
    this.timeouts,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeServerId'] = routeServerId;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          RouteServerVpcAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory RouteServerVpcAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerVpcAssociationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routeServerId: pulumi.Input.asInput<String>(map['routeServerId']),
      timeouts: pulumi.Input.asOptionalInput<RouteServerVpcAssociationTimeouts>(
          map['timeouts']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}
