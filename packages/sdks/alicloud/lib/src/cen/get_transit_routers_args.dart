// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_routers_get_transit_routers_args_doc}
/// Arguments for getTransitRouters.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_routers_get_transit_routers_args_doc}
class GetTransitRoutersArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// A list of resource id. The element value is same as &lt;cen_id&gt;:&lt;transit_router_id&gt;`.
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
  /// [ids] A list of resource id. The element value is same as &lt;cen_id&gt;:&lt;transit_router_id&gt;`.
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
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterIds: (() { final guardedValue = map['transitRouterIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

