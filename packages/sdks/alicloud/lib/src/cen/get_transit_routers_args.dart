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
    required pulumi.Output<String> cenId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<List<String>>? transitRouterIds,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterIds = pulumi.Input.asOptionalInput<List<String>>(transitRouterIds);

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
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterIds: map['transitRouterIds'] == null ? null : pulumi.Output.create<List<String>>((map['transitRouterIds'] as List).cast<String>()),
    );
  }
}

