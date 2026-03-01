// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone.dart';

/// Result data returned by getZones.
class GetZonesResult {
  final String? availableSlbAddressIpVersion;
  final String? availableSlbAddressType;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of primary zone IDs.
  final List<String> ids;
  /// (Available in 1.157.0+) The primary zone.
  final String? masterZoneId;
  final String? outputFile;
  /// (Available in 1.157.0+) The secondary zone.
  final String? slaveZoneId;
  /// A list of availability zones. Each element contains the following attributes:
  final List<GetZonesZone> zones;

  /// Creates a new [GetZonesResult].
  /// [availableSlbAddressIpVersion] Optional.
  /// [availableSlbAddressType] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of primary zone IDs.
  /// [masterZoneId] (Available in 1.157.0+) The primary zone.
  /// [outputFile] Optional.
  /// [slaveZoneId] (Available in 1.157.0+) The secondary zone.
  /// [zones] A list of availability zones. Each element contains the following attributes:
  GetZonesResult({
    this.availableSlbAddressIpVersion,
    this.availableSlbAddressType,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.masterZoneId,
    this.outputFile,
    this.slaveZoneId,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSlbAddressIpVersion': ?availableSlbAddressIpVersion,
      'availableSlbAddressType': ?availableSlbAddressType,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'masterZoneId': ?masterZoneId,
      'outputFile': ?outputFile,
      'slaveZoneId': ?slaveZoneId,
      'zones': pulumi.Input.encodeList<GetZonesZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      availableSlbAddressIpVersion: map['availableSlbAddressIpVersion'] == null ? null : map['availableSlbAddressIpVersion'] as String,
      availableSlbAddressType: map['availableSlbAddressType'] == null ? null : map['availableSlbAddressType'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      masterZoneId: map['masterZoneId'] == null ? null : map['masterZoneId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      slaveZoneId: map['slaveZoneId'] == null ? null : map['slaveZoneId'] as String,
      zones: pulumi.Input.decodeList<GetZonesZone>(map['zones'], (value) => GetZonesZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

