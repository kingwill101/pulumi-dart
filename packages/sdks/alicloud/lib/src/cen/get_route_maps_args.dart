// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_route_maps_get_route_maps_args_doc}
/// Arguments for getRouteMaps.
/// {@endtemplate}
/// {@macro pulumi_cen_get_route_maps_get_route_maps_args_doc}
class GetRouteMapsArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The ID of the region to which the CEN instance belongs.
  final pulumi.Input<String>? cenRegionId;
  /// A regex string to filter CEN route map by description.
  final pulumi.Input<String>? descriptionRegex;
  /// A list of CEN route map IDs. Each item formats as `<cen_id>:<route_map_id>`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the route map, including `Creating`, `Active` and `Deleting`.
  final pulumi.Input<String>? status;
  /// The direction in which the route map is applied, including `RegionIn` and `RegionOut`.
  final pulumi.Input<String>? transmitDirection;

  /// Creates a new [GetRouteMapsArgs].
  /// [cenId] The ID of the CEN instance.
  /// [cenRegionId] The ID of the region to which the CEN instance belongs.
  /// [descriptionRegex] A regex string to filter CEN route map by description.
  /// [ids] A list of CEN route map IDs. Each item formats as `<cen_id>:<route_map_id>`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the route map, including `Creating`, `Active` and `Deleting`.
  /// [transmitDirection] The direction in which the route map is applied, including `RegionIn` and `RegionOut`.
  GetRouteMapsArgs({
    required pulumi.Output<String> cenId,
    pulumi.Output<String>? cenRegionId,
    pulumi.Output<String>? descriptionRegex,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transmitDirection,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      cenRegionId = pulumi.Input.asOptionalInput<String>(cenRegionId),
      descriptionRegex = pulumi.Input.asOptionalInput<String>(descriptionRegex),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transmitDirection = pulumi.Input.asOptionalInput<String>(transmitDirection);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'cenRegionId': ?cenRegionId,
      'descriptionRegex': ?descriptionRegex,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'transmitDirection': ?transmitDirection,
    };
  }

  factory GetRouteMapsArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteMapsArgs(
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      cenRegionId: map['cenRegionId'] == null ? null : pulumi.Output.create<String>(map['cenRegionId'] as String),
      descriptionRegex: map['descriptionRegex'] == null ? null : pulumi.Output.create<String>(map['descriptionRegex'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transmitDirection: map['transmitDirection'] == null ? null : pulumi.Output.create<String>(map['transmitDirection'] as String),
    );
  }
}

