// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_zones_zone.dart';

/// Result data returned by getVpcEndpointZones.
class GetVpcEndpointZonesResult {
  final String endpointId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Vpc Endpoint Zone IDs.
  final List<String> ids;
  final String? outputFile;
  /// The Status of Vpc Endpoint Zone..
  final String? status;
  /// A list of Privatelink Vpc Endpoint Zones. Each element contains the following attributes:
  final List<GetVpcEndpointZonesZone> zones;

  /// Creates a new [GetVpcEndpointZonesResult].
  /// [endpointId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Vpc Endpoint Zone IDs.
  /// [outputFile] Optional.
  /// [status] The Status of Vpc Endpoint Zone..
  /// [zones] A list of Privatelink Vpc Endpoint Zones. Each element contains the following attributes:
  const GetVpcEndpointZonesResult({
    required this.endpointId,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'zones': pulumi.Input.encodeList<GetVpcEndpointZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetVpcEndpointZonesResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointZonesResult(
      endpointId: map['endpointId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: pulumi.Input.decodeList<GetVpcEndpointZonesZone>(map['zones']!, (value) => GetVpcEndpointZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

