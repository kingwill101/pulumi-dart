// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRoutersTransitRouter {
  /// The UID of the Aliyun.
  final String aliUid;
  /// The ID of the CEN instance.
  final String cenId;
  /// The ID of the resource, It is formatted to `<cen_id>:<transit_router_id>`. **NOTE:** Before 1.151.0, It is formatted to `<transit_router_id>`.
  final String id;
  /// The status of the resource. Valid values `Active`, `Creating`, `Deleting` and `Updating`.
  final String status;
  /// The description of the transit router.
  final String transitRouterDescription;
  /// The ID of the transit router.
  final String transitRouterId;
  /// The name of the transit router.
  final String transitRouterName;
  /// The Type of the transit router.
  final String type;
  /// The vip of the XGW.
  final String xgwVip;

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
      aliUid: map['aliUid'] as String,
      cenId: map['cenId'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
      transitRouterDescription: map['transitRouterDescription'] as String,
      transitRouterId: map['transitRouterId'] as String,
      transitRouterName: map['transitRouterName'] as String,
      type: map['type'] as String,
      xgwVip: map['xgwVip'] as String,
    );
  }
}

