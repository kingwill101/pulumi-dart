// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_reservation_block_health_info/get_reservation_block_health_info.dart';
import '../get_reservation_block_physical_topology/get_reservation_block_physical_topology.dart';
import '../get_reservation_block_reservation_maintenance/get_reservation_block_reservation_maintenance.dart';

/// Result data returned by getReservationBlock.
class GetReservationBlockResult {
  /// The number of resources that are allocated in this reservation block.
  final int blockCount;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// Health information for the reservation block. Structure is documented below.
  final List<GetReservationBlockHealthInfo> healthInfos;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The number of instances that are currently in use on this reservation block.
  final int inUseCount;

  /// Type of the resource. Always `compute#reservationBlock` for reservation blocks.
  final String kind;
  final String name;

  /// The physical topology of the reservation block. Structure is documented below.
  final List<GetReservationBlockPhysicalTopology> physicalTopologies;
  final String project;
  final String reservation;

  /// Maintenance information for this reservation block. Structure is documented below.
  final List<GetReservationBlockReservationMaintenance> reservationMaintenances;

  /// The number of reservation sub-blocks associated with this reservation block.
  final int reservationSubBlockCount;

  /// The number of in-use reservation sub-blocks associated with this reservation block.
  final int reservationSubBlockInUseCount;

  /// The unique identifier for the resource.
  final String resourceId;

  /// Server-defined fully-qualified URL for this resource.
  final String selfLink;

  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  /// Status of the reservation block.
  final String status;

  /// A List of all block sub-block names in the parent block.
  final List<String> subBlockNames;
  final String? zone;

  GetReservationBlockResult({
    required this.blockCount,
    required this.creationTimestamp,
    required this.healthInfos,
    required this.id,
    required this.inUseCount,
    required this.kind,
    required this.name,
    required this.physicalTopologies,
    required this.project,
    required this.reservation,
    required this.reservationMaintenances,
    required this.reservationSubBlockCount,
    required this.reservationSubBlockInUseCount,
    required this.resourceId,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.status,
    required this.subBlockNames,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockCount'] = blockCount;
    map['creationTimestamp'] = creationTimestamp;
    map['healthInfos'] = pulumi.Input.encodeList<GetReservationBlockHealthInfo,
        Map<String, dynamic>>(healthInfos, (value) => value.toMap());
    map['id'] = id;
    map['inUseCount'] = inUseCount;
    map['kind'] = kind;
    map['name'] = name;
    map['physicalTopologies'] = pulumi.Input.encodeList<
        GetReservationBlockPhysicalTopology,
        Map<String, dynamic>>(physicalTopologies, (value) => value.toMap());
    map['project'] = project;
    map['reservation'] = reservation;
    map['reservationMaintenances'] = pulumi.Input.encodeList<
            GetReservationBlockReservationMaintenance, Map<String, dynamic>>(
        reservationMaintenances, (value) => value.toMap());
    map['reservationSubBlockCount'] = reservationSubBlockCount;
    map['reservationSubBlockInUseCount'] = reservationSubBlockInUseCount;
    map['resourceId'] = resourceId;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['status'] = status;
    map['subBlockNames'] = subBlockNames;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetReservationBlockResult.fromMap(Map<String, dynamic> map) {
    return GetReservationBlockResult(
      blockCount: map['blockCount'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      healthInfos: pulumi.Input.decodeList<GetReservationBlockHealthInfo>(
          map['healthInfos'],
          (value) => GetReservationBlockHealthInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      inUseCount: map['inUseCount'] as int,
      kind: map['kind'] as String,
      name: map['name'] as String,
      physicalTopologies:
          pulumi.Input.decodeList<GetReservationBlockPhysicalTopology>(
              map['physicalTopologies'],
              (value) => GetReservationBlockPhysicalTopology.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      reservation: map['reservation'] as String,
      reservationMaintenances:
          pulumi.Input.decodeList<GetReservationBlockReservationMaintenance>(
              map['reservationMaintenances'],
              (value) => GetReservationBlockReservationMaintenance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      reservationSubBlockCount: map['reservationSubBlockCount'] as int,
      reservationSubBlockInUseCount:
          map['reservationSubBlockInUseCount'] as int,
      resourceId: map['resourceId'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      status: map['status'] as String,
      subBlockNames: (map['subBlockNames'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
