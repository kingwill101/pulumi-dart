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

  /// A list of CEN route map IDs. Each item formats as `&lt;cen_id&gt;:&lt;route_map_id&gt;`.
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
  /// [ids] A list of CEN route map IDs. Each item formats as `&lt;cen_id&gt;:&lt;route_map_id&gt;`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the route map, including `Creating`, `Active` and `Deleting`.
  /// [transmitDirection] The direction in which the route map is applied, including `RegionIn` and `RegionOut`.
  GetRouteMapsArgs({
    required this.cenId,
    this.cenRegionId,
    this.descriptionRegex,
    this.ids,
    this.outputFile,
    this.status,
    this.transmitDirection,
  });

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
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      cenRegionId: (() {
        final guardedValue = map['cenRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      descriptionRegex: (() {
        final guardedValue = map['descriptionRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transmitDirection: (() {
        final guardedValue = map['transmitDirection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
