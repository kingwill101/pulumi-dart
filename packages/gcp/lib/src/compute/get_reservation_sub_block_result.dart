// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_sub_block_health_info.dart';
import 'get_reservation_sub_block_physical_topology.dart';
import 'get_reservation_sub_block_reservation_sub_block_maintenance.dart';

/// Result data returned by getReservationSubBlock.
class GetReservationSubBlockResult {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// Health information for the reservation sub-block. Structure is documented below.
  final List<GetReservationSubBlockHealthInfo> healthInfos;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The number of instances that are currently in use on this reservation sub-block.
  final int inUseCount;

  /// Type of the resource. Always `compute#reservationSubBlock` for reservation sub-blocks.
  final String kind;
  final String name;

  /// The physical topology of the reservation sub-block. Structure is documented below.
  final List<GetReservationSubBlockPhysicalTopology> physicalTopologies;
  final String project;
  final String reservation;
  final String reservationBlock;

  /// Maintenance information for this reservation sub-block. Structure is documented below.
  final List<GetReservationSubBlockReservationSubBlockMaintenance>
      reservationSubBlockMaintenances;

  /// The unique identifier for the resource.
  final String resourceId;

  /// Server-defined fully-qualified URL for this resource.
  final String selfLink;

  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  /// Status of the reservation sub-block.
  final String status;

  /// The number of hosts that are allocated in this reservation sub-block.
  final int subBlockCount;
  final String? zone;

  /// Creates a new [GetReservationSubBlockResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [healthInfos] Health information for the reservation sub-block. Structure is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inUseCount] The number of instances that are currently in use on this reservation sub-block.
  /// [kind] Type of the resource. Always `compute#reservationSubBlock` for reservation sub-blocks.
  /// [name] Required.
  /// [physicalTopologies] The physical topology of the reservation sub-block. Structure is documented below.
  /// [project] Required.
  /// [reservation] Required.
  /// [reservationBlock] Required.
  /// [reservationSubBlockMaintenances] Maintenance information for this reservation sub-block. Structure is documented below.
  /// [resourceId] The unique identifier for the resource.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [status] Status of the reservation sub-block.
  /// [subBlockCount] The number of hosts that are allocated in this reservation sub-block.
  /// [zone] Optional.
  GetReservationSubBlockResult({
    required this.creationTimestamp,
    required this.healthInfos,
    required this.id,
    required this.inUseCount,
    required this.kind,
    required this.name,
    required this.physicalTopologies,
    required this.project,
    required this.reservation,
    required this.reservationBlock,
    required this.reservationSubBlockMaintenances,
    required this.resourceId,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.status,
    required this.subBlockCount,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTimestamp'] = creationTimestamp;
    map['healthInfos'] = pulumi.Input.encodeList<
        GetReservationSubBlockHealthInfo,
        Map<String, dynamic>>(healthInfos, (value) => value.toMap());
    map['id'] = id;
    map['inUseCount'] = inUseCount;
    map['kind'] = kind;
    map['name'] = name;
    map['physicalTopologies'] = pulumi.Input.encodeList<
        GetReservationSubBlockPhysicalTopology,
        Map<String, dynamic>>(physicalTopologies, (value) => value.toMap());
    map['project'] = project;
    map['reservation'] = reservation;
    map['reservationBlock'] = reservationBlock;
    map['reservationSubBlockMaintenances'] = pulumi.Input.encodeList<
            GetReservationSubBlockReservationSubBlockMaintenance,
            Map<String, dynamic>>(
        reservationSubBlockMaintenances, (value) => value.toMap());
    map['resourceId'] = resourceId;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['status'] = status;
    map['subBlockCount'] = subBlockCount;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetReservationSubBlockResult.fromMap(Map<String, dynamic> map) {
    return GetReservationSubBlockResult(
      creationTimestamp: map['creationTimestamp'] as String,
      healthInfos: pulumi.Input.decodeList<GetReservationSubBlockHealthInfo>(
          map['healthInfos'],
          (value) => GetReservationSubBlockHealthInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      inUseCount: map['inUseCount'] as int,
      kind: map['kind'] as String,
      name: map['name'] as String,
      physicalTopologies:
          pulumi.Input.decodeList<GetReservationSubBlockPhysicalTopology>(
              map['physicalTopologies'],
              (value) => GetReservationSubBlockPhysicalTopology.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      reservation: map['reservation'] as String,
      reservationBlock: map['reservationBlock'] as String,
      reservationSubBlockMaintenances: pulumi.Input.decodeList<
              GetReservationSubBlockReservationSubBlockMaintenance>(
          map['reservationSubBlockMaintenances'],
          (value) =>
              GetReservationSubBlockReservationSubBlockMaintenance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceId: map['resourceId'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      status: map['status'] as String,
      subBlockCount: map['subBlockCount'] as int,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
