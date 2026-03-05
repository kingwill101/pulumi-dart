// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRoutersTransitRouter {
  /// The UID of the Aliyun.
  final pulumi.Input<String> aliUid;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The ID of the resource, It is formatted to `&lt;cen_id&gt;:&lt;transit_router_id&gt;`. **NOTE:** Before 1.151.0, It is formatted to `&lt;transit_router_id&gt;`.
  final pulumi.Input<String> id;
  /// The status of the resource. Valid values `Active`, `Creating`, `Deleting` and `Updating`.
  final pulumi.Input<String> status;
  /// The description of the transit router.
  final pulumi.Input<String> transitRouterDescription;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;
  /// The name of the transit router.
  final pulumi.Input<String> transitRouterName;
  /// The Type of the transit router.
  final pulumi.Input<String> type;
  /// The vip of the XGW.
  final pulumi.Input<String> xgwVip;

  /// Creates a new [GetTransitRoutersTransitRouter].
  /// [aliUid] The UID of the Aliyun.
  /// [cenId] The ID of the CEN instance.
  /// [id] The ID of the resource, It is formatted to `&lt;cen_id&gt;:&lt;transit_router_id&gt;`. **NOTE:** Before 1.151.0, It is formatted to `&lt;transit_router_id&gt;`.
  /// [status] The status of the resource. Valid values `Active`, `Creating`, `Deleting` and `Updating`.
  /// [transitRouterDescription] The description of the transit router.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterName] The name of the transit router.
  /// [type] The Type of the transit router.
  /// [xgwVip] The vip of the XGW.
  GetTransitRoutersTransitRouter({
    required this.aliUid,
    required this.cenId,
    required this.id,
    required this.status,
    required this.transitRouterDescription,
    required this.transitRouterId,
    required this.transitRouterName,
    required this.type,
    required this.xgwVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliUid': aliUid,
      'cenId': cenId,
      'id': id,
      'status': status,
      'transitRouterDescription': transitRouterDescription,
      'transitRouterId': transitRouterId,
      'transitRouterName': transitRouterName,
      'type': type,
      'xgwVip': xgwVip,
    };
  }

  factory GetTransitRoutersTransitRouter.fromMap(Map<String, dynamic> map) {
    return GetTransitRoutersTransitRouter(
      aliUid: pulumi.Input.fromValue(map['aliUid'] as String),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterDescription: pulumi.Input.fromValue(map['transitRouterDescription'] as String),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
      transitRouterName: pulumi.Input.fromValue(map['transitRouterName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      xgwVip: pulumi.Input.fromValue(map['xgwVip'] as String),
    );
  }
}

