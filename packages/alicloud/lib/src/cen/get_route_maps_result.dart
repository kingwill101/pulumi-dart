// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_maps_map.dart';

/// Result data returned by getRouteMaps.
class GetRouteMapsResult {
  /// The ID of the CEN instance.
  final String cenId;
  /// The ID of the region to which the CEN instance belongs.
  final String? cenRegionId;
  final String? descriptionRegex;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CEN route map IDs. Each item formats as `<cen_id>:<route_map_id>`. Before 1.161.0, its element is `route_map_id`.
  final List<String> ids;
  /// A list of CEN instances. Each element contains the following attributes:
  final List<GetRouteMapsMap> maps;
  final String? outputFile;
  /// The status of the route map.
  final String? status;
  /// The direction in which the route map is applied.
  final String? transmitDirection;

  /// Creates a new [GetRouteMapsResult].
  /// [cenId] The ID of the CEN instance.
  /// [cenRegionId] The ID of the region to which the CEN instance belongs.
  /// [descriptionRegex] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CEN route map IDs. Each item formats as `<cen_id>:<route_map_id>`. Before 1.161.0, its element is `route_map_id`.
  /// [maps] A list of CEN instances. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [status] The status of the route map.
  /// [transmitDirection] The direction in which the route map is applied.
  GetRouteMapsResult({
    required this.cenId,
    this.cenRegionId,
    this.descriptionRegex,
    required this.id,
    required this.ids,
    required this.maps,
    this.outputFile,
    this.status,
    this.transmitDirection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'cenRegionId': ?cenRegionId,
      'descriptionRegex': ?descriptionRegex,
      'id': id,
      'ids': ids,
      'maps': pulumi.Input.encodeList<GetRouteMapsMap, Map<String, dynamic>>(maps, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'status': ?status,
      'transmitDirection': ?transmitDirection,
    };
  }

  factory GetRouteMapsResult.fromMap(Map<String, dynamic> map) {
    return GetRouteMapsResult(
      cenId: map['cenId'] as String,
      cenRegionId: map['cenRegionId'] == null ? null : map['cenRegionId'] as String,
      descriptionRegex: map['descriptionRegex'] == null ? null : map['descriptionRegex'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      maps: pulumi.Input.decodeList<GetRouteMapsMap>(map['maps'], (value) => GetRouteMapsMap.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      transmitDirection: map['transmitDirection'] == null ? null : map['transmitDirection'] as String,
    );
  }
}

