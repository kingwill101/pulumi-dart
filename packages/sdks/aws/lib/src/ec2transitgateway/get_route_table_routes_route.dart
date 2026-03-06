// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteTableRoutesRoute {
  /// The CIDR used for route destination matches.
  final pulumi.Input<String> destinationCidrBlock;
  /// The ID of the prefix list used for destination matches.
  final pulumi.Input<String> prefixListId;
  /// The current state of the route, can be `active`, `deleted`, `pending`, `blackhole`, `deleting`.
  final pulumi.Input<String> state;
  /// The id of the transit gateway route table announcement, most of the time it is an empty string.
  final pulumi.Input<String> transitGatewayRouteTableAnnouncementId;
  /// The type of the route, can be `propagated` or `static`.
  final pulumi.Input<String> type;

  /// Creates a new [GetRouteTableRoutesRoute].
  /// [destinationCidrBlock] The CIDR used for route destination matches.
  /// [prefixListId] The ID of the prefix list used for destination matches.
  /// [state] The current state of the route, can be `active`, `deleted`, `pending`, `blackhole`, `deleting`.
  /// [transitGatewayRouteTableAnnouncementId] The id of the transit gateway route table announcement, most of the time it is an empty string.
  /// [type] The type of the route, can be `propagated` or `static`.
  const GetRouteTableRoutesRoute({
    required this.destinationCidrBlock,
    required this.prefixListId,
    required this.state,
    required this.transitGatewayRouteTableAnnouncementId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': destinationCidrBlock,
      'prefixListId': prefixListId,
      'state': state,
      'transitGatewayRouteTableAnnouncementId': transitGatewayRouteTableAnnouncementId,
      'type': type,
    };
  }

  factory GetRouteTableRoutesRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoutesRoute(
      destinationCidrBlock: pulumi.Input.fromValue(map['destinationCidrBlock'] as String),
      prefixListId: pulumi.Input.fromValue(map['prefixListId'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      transitGatewayRouteTableAnnouncementId: pulumi.Input.fromValue(map['transitGatewayRouteTableAnnouncementId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

