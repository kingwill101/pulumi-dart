// ignore_for_file: unused_element, unnecessary_cast


class GetDiskReplicaGroupsGroup {
  /// The description of the consistent replication group.
  final String description;
  /// The ID of the region to which the disaster recovery site belongs.
  final String destinationRegionId;
  /// The ID of the zone to which the disaster recovery site belongs.
  final String destinationZoneId;
  /// Consistent replication group name.
  final String groupName;
  /// The ID of the Disk Replica Group.
  final String id;
  final String lastRecoverPoint;
  /// The initial source region of the replication group.
  final String primaryRegion;
  /// The initial source available area of the replication group.
  final String primaryZone;
  /// The ID of the consistent replication group.
  final String replicaGroupId;
  /// The recovery point objective (RPO) of the replication pair-consistent group.
  final int rpo;
  /// Site information sources for replication pairs and consistent replication groups.
  final String site;
  /// The ID of the region to which the production site belongs.
  final String sourceRegionId;
  /// The ID of the zone to which the production site belongs.
  final String sourceZoneId;
  /// The initial destination region of the replication group.
  final String standbyRegion;
  /// The initial destination zone of the replication group.
  final String standbyZone;
  /// The status of the consistent replication group. Possible values:
  final String status;

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
      description: map['description'] as String,
      destinationRegionId: map['destinationRegionId'] as String,
      destinationZoneId: map['destinationZoneId'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      lastRecoverPoint: map['lastRecoverPoint'] as String,
      primaryRegion: map['primaryRegion'] as String,
      primaryZone: map['primaryZone'] as String,
      replicaGroupId: map['replicaGroupId'] as String,
      rpo: map['rpo'] as int,
      site: map['site'] as String,
      sourceRegionId: map['sourceRegionId'] as String,
      sourceZoneId: map['sourceZoneId'] as String,
      standbyRegion: map['standbyRegion'] as String,
      standbyZone: map['standbyZone'] as String,
      status: map['status'] as String,
    );
  }
}

