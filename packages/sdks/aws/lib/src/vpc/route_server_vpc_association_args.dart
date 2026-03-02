// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_vpc_association_timeouts.dart';

/// {@template pulumi_vpc_route_server_vpc_association_route_server_vpc_association_args_doc}
/// The set of arguments for RouteServerVpcAssociation.
/// {@endtemplate}
/// {@macro pulumi_vpc_route_server_vpc_association_route_server_vpc_association_args_doc}
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

  /// Creates a new [RouteServerVpcAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerId] The unique identifier for the route server to be associated.
  /// [timeouts] Optional.
  /// [vpcId] The ID of the VPC to associate with the route server.
  RouteServerVpcAssociationArgs({
    this.region,
    required this.routeServerId,
    this.timeouts,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeServerId': routeServerId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RouteServerVpcAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': vpcId,
    };
  }

  factory RouteServerVpcAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerVpcAssociationArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routeServerId: (map['routeServerId'] as String).input(),
      timeouts: map['timeouts'] == null ? null : ((RouteServerVpcAssociationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

