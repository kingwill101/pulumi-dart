// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_vpc_association_timeouts.dart';

/// Input properties used for looking up and filtering RouteServerVpcAssociation resources.
class RouteServerVpcAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The unique identifier for the route server to be associated.
  final pulumi.Input<String>? routeServerId;
  final pulumi.Input<RouteServerVpcAssociationTimeouts>? timeouts;
  /// The ID of the VPC to associate with the route server.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [RouteServerVpcAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerId] The unique identifier for the route server to be associated.
  /// [timeouts] Optional.
  /// [vpcId] The ID of the VPC to associate with the route server.
  RouteServerVpcAssociationState({
    this.region,
    this.routeServerId,
    this.timeouts,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeServerId': ?routeServerId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RouteServerVpcAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory RouteServerVpcAssociationState.fromMap(Map<String, dynamic> map) {
    return RouteServerVpcAssociationState(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routeServerId: map['routeServerId'] == null ? null : ((map['routeServerId'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((RouteServerVpcAssociationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

