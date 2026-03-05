// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone_supported_resource.dart';

class GetZonesZone {
  /// ID of the zone. It is same as `master_zone_id`.
  final pulumi.Input<String> id;
  /// The primary zone.
  final pulumi.Input<String> masterZoneId;
  /// The secondary zone.
  final pulumi.Input<String> slaveZoneId;
  /// (Deprecated from 1.157.0) A list of slb slave zone ids in which the slb master zone.
  /// It has been deprecated from v1.157.0 and use `slave_zone_id` instead.
  final pulumi.Input<List<String>> slbSlaveZoneIds;
  /// (Available in 1.154.0+)A list of available resource which the slb master zone supported.
  final pulumi.Input<List<GetZonesZoneSupportedResource>> supportedResources;

  /// Creates a new [GetZonesZone].
  /// [id] ID of the zone. It is same as `master_zone_id`.
  /// [masterZoneId] The primary zone.
  /// [slaveZoneId] The secondary zone.
  /// [slbSlaveZoneIds] (Deprecated from 1.157.0) A list of slb slave zone ids in which the slb master zone.
  /// [supportedResources] (Available in 1.154.0+)A list of available resource which the slb master zone supported.
  GetZonesZone({
    required this.id,
    required this.masterZoneId,
    required this.slaveZoneId,
    required this.slbSlaveZoneIds,
    required this.supportedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'masterZoneId': masterZoneId,
      'slaveZoneId': slaveZoneId,
      'slbSlaveZoneIds': slbSlaveZoneIds,
      'supportedResources': pulumi.Input.mapInputValue<List<GetZonesZoneSupportedResource>, List<Map<String, dynamic>>>(supportedResources, (value) => pulumi.Input.encodeList<GetZonesZoneSupportedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      id: pulumi.Input.fromValue(map['id'] as String),
      masterZoneId: pulumi.Input.fromValue(map['masterZoneId'] as String),
      slaveZoneId: pulumi.Input.fromValue(map['slaveZoneId'] as String),
      slbSlaveZoneIds: pulumi.Input.fromValue((map['slbSlaveZoneIds'] as List).cast<String>()),
      supportedResources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZonesZoneSupportedResource>(map['supportedResources']!, (value) => GetZonesZoneSupportedResource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

