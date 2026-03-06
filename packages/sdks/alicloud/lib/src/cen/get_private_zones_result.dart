// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_zones_zone.dart';

/// Result data returned by getPrivateZones.
class GetPrivateZonesResult {
  /// The ID of the CEN instance.
  final String cenId;
  /// The service region. The service region is the target region of the PrivateZone service accessed through CEN.
  final String? hostRegionId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CEN private zone IDs. Each element format as `&lt;cen_id&gt;:&lt;access_region_id&gt;`.
  /// **NOTE:** Before 1.162.0, each element same as `access_region_id`.
  final List<String> ids;
  final String? outputFile;
  /// The status of the PrivateZone service.
  final String? status;
  /// A list of CEN private zones. Each element contains the following attributes:
  final List<GetPrivateZonesZone> zones;

  /// Creates a new [GetPrivateZonesResult].
  /// [cenId] The ID of the CEN instance.
  /// [hostRegionId] The service region. The service region is the target region of the PrivateZone service accessed through CEN.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CEN private zone IDs. Each element format as `&lt;cen_id&gt;:&lt;access_region_id&gt;`.
  /// [outputFile] Optional.
  /// [status] The status of the PrivateZone service.
  /// [zones] A list of CEN private zones. Each element contains the following attributes:
  const GetPrivateZonesResult({
    required this.cenId,
    this.hostRegionId,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'hostRegionId': ?hostRegionId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'zones': pulumi.Input.encodeList<GetPrivateZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetPrivateZonesResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateZonesResult(
      cenId: map['cenId'] as String,
      hostRegionId: (() { final guardedValue = map['hostRegionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: pulumi.Input.decodeList<GetPrivateZonesZone>(map['zones']!, (value) => GetPrivateZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

