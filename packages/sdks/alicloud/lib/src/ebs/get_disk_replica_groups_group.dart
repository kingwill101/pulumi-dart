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
      description: pulumi.Input.fromValue(map['description'] as String),
      destinationRegionId: pulumi.Input.fromValue(map['destinationRegionId'] as String),
      destinationZoneId: pulumi.Input.fromValue(map['destinationZoneId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastRecoverPoint: pulumi.Input.fromValue(map['lastRecoverPoint'] as String),
      primaryRegion: pulumi.Input.fromValue(map['primaryRegion'] as String),
      primaryZone: pulumi.Input.fromValue(map['primaryZone'] as String),
      replicaGroupId: pulumi.Input.fromValue(map['replicaGroupId'] as String),
      rpo: pulumi.Input.fromValue(map['rpo'] as int),
      site: pulumi.Input.fromValue(map['site'] as String),
      sourceRegionId: pulumi.Input.fromValue(map['sourceRegionId'] as String),
      sourceZoneId: pulumi.Input.fromValue(map['sourceZoneId'] as String),
      standbyRegion: pulumi.Input.fromValue(map['standbyRegion'] as String),
      standbyZone: pulumi.Input.fromValue(map['standbyZone'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

