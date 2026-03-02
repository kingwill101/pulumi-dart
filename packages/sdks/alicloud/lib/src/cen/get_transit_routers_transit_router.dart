// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRoutersTransitRouter {
  /// The UID of the Aliyun.
  final pulumi.Input<String> aliUid;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The ID of the resource, It is formatted to `<cen_id>:<transit_router_id>`. **NOTE:** Before 1.151.0, It is formatted to `<transit_router_id>`.
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
  /// [id] The ID of the resource, It is formatted to `<cen_id>:<transit_router_id>`. **NOTE:** Before 1.151.0, It is formatted to `<transit_router_id>`.
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
      aliUid: (map['aliUid'] as String).input(),
      cenId: (map['cenId'] as String).input(),
      id: (map['id'] as String).input(),
      status: (map['status'] as String).input(),
      transitRouterDescription: (map['transitRouterDescription'] as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
      transitRouterName: (map['transitRouterName'] as String).input(),
      type: (map['type'] as String).input(),
      xgwVip: (map['xgwVip'] as String).input(),
    );
  }
}

