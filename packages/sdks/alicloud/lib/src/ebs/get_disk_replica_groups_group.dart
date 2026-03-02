// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiskReplicaGroupsGroup {
  /// The description of the consistent replication group.
  final pulumi.Input<String> description;
  /// The ID of the region to which the disaster recovery site belongs.
  final pulumi.Input<String> destinationRegionId;
  /// The ID of the zone to which the disaster recovery site belongs.
  final pulumi.Input<String> destinationZoneId;
  /// Consistent replication group name.
  final pulumi.Input<String> groupName;
  /// The ID of the Disk Replica Group.
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastRecoverPoint;
  /// The initial source region of the replication group.
  final pulumi.Input<String> primaryRegion;
  /// The initial source available area of the replication group.
  final pulumi.Input<String> primaryZone;
  /// The ID of the consistent replication group.
  final pulumi.Input<String> replicaGroupId;
  /// The recovery point objective (RPO) of the replication pair-consistent group.
  final pulumi.Input<int> rpo;
  /// Site information sources for replication pairs and consistent replication groups.
  final pulumi.Input<String> site;
  /// The ID of the region to which the production site belongs.
  final pulumi.Input<String> sourceRegionId;
  /// The ID of the zone to which the production site belongs.
  final pulumi.Input<String> sourceZoneId;
  /// The initial destination region of the replication group.
  final pulumi.Input<String> standbyRegion;
  /// The initial destination zone of the replication group.
  final pulumi.Input<String> standbyZone;
  /// The status of the consistent replication group. Possible values:
  final pulumi.Input<String> status;

  /// Creates a new [GetDiskReplicaGroupsGroup].
  /// [description] The description of the consistent replication group.
  /// [destinationRegionId] The ID of the region to which the disaster recovery site belongs.
  /// [destinationZoneId] The ID of the zone to which the disaster recovery site belongs.
  /// [groupName] Consistent replication group name.
  /// [id] The ID of the Disk Replica Group.
  /// [lastRecoverPoint] Required.
  /// [primaryRegion] The initial source region of the replication group.
  /// [primaryZone] The initial source available area of the replication group.
  /// [replicaGroupId] The ID of the consistent replication group.
  /// [rpo] The recovery point objective (RPO) of the replication pair-consistent group.
  /// [site] Site information sources for replication pairs and consistent replication groups.
  /// [sourceRegionId] The ID of the region to which the production site belongs.
  /// [sourceZoneId] The ID of the zone to which the production site belongs.
  /// [standbyRegion] The initial destination region of the replication group.
  /// [standbyZone] The initial destination zone of the replication group.
  /// [status] The status of the consistent replication group. Possible values:
  GetDiskReplicaGroupsGroup({
    required this.description,
    required this.destinationRegionId,
    required this.destinationZoneId,
    required this.groupName,
    required this.id,
    required this.lastRecoverPoint,
    required this.primaryRegion,
    required this.primaryZone,
    required this.replicaGroupId,
    required this.rpo,
    required this.site,
    required this.sourceRegionId,
    required this.sourceZoneId,
    required this.standbyRegion,
    required this.standbyZone,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'destinationRegionId': destinationRegionId,
      'destinationZoneId': destinationZoneId,
      'groupName': groupName,
      'id': id,
      'lastRecoverPoint': lastRecoverPoint,
      'primaryRegion': primaryRegion,
      'primaryZone': primaryZone,
      'replicaGroupId': replicaGroupId,
      'rpo': rpo,
      'site': site,
      'sourceRegionId': sourceRegionId,
      'sourceZoneId': sourceZoneId,
      'standbyRegion': standbyRegion,
      'standbyZone': standbyZone,
      'status': status,
    };
  }

  factory GetDiskReplicaGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetDiskReplicaGroupsGroup(
      description: (map['description'] as String).input(),
      destinationRegionId: (map['destinationRegionId'] as String).input(),
      destinationZoneId: (map['destinationZoneId'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      id: (map['id'] as String).input(),
      lastRecoverPoint: (map['lastRecoverPoint'] as String).input(),
      primaryRegion: (map['primaryRegion'] as String).input(),
      primaryZone: (map['primaryZone'] as String).input(),
      replicaGroupId: (map['replicaGroupId'] as String).input(),
      rpo: (map['rpo'] as int).input(),
      site: (map['site'] as String).input(),
      sourceRegionId: (map['sourceRegionId'] as String).input(),
      sourceZoneId: (map['sourceZoneId'] as String).input(),
      standbyRegion: (map['standbyRegion'] as String).input(),
      standbyZone: (map['standbyZone'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

