// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_routers_get_transit_routers_args_doc}
/// Arguments for getTransitRouters.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_routers_get_transit_routers_args_doc}
class GetTransitRoutersArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// A list of resource id. The element value is same as <cen_id>:<transit_router_id>`.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter CEN Transit Routers by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values `Active`, `Creating`, `Deleting` and `Updating`.
  final pulumi.Input<String>? status;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;
  /// A list of ID of the transit router.
  final pulumi.Input<List<String>>? transitRouterIds;

  /// Creates a new [GetTransitRoutersArgs].
  /// [cenId] The ID of the CEN instance.
  /// [ids] A list of resource id. The element value is same as <cen_id>:<transit_router_id>`.
  /// [nameRegex] A regex string to filter CEN Transit Routers by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values `Active`, `Creating`, `Deleting` and `Updating`.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterIds] A list of ID of the transit router.
  GetTransitRoutersArgs({
    required this.cenId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.transitRouterId,
    this.transitRouterIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterId': ?transitRouterId,
      'transitRouterIds': ?transitRouterIds,
    };
  }

  factory GetTransitRoutersArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRoutersArgs(
      cenId: (map['cenId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId']! as String).input(),
      transitRouterIds: map['transitRouterIds'] == null ? null : ((map['transitRouterIds']! as List).cast<String>()).input(),
    );
  }
}

