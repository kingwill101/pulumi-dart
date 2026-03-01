// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_disk_replica_group_disk_replica_group_args_doc}
/// The set of arguments for DiskReplicaGroup.
/// {@endtemplate}
/// {@macro pulumi_ebs_disk_replica_group_disk_replica_group_args_doc}
class DiskReplicaGroupArgs {
  /// The description of the consistent replication group.
  final pulumi.Input<String>? description;
  /// The ID of the region to which the disaster recovery site belongs.
  final pulumi.Input<String> destinationRegionId;
  /// The ID of the zone to which the disaster recovery site belongs.
  final pulumi.Input<String> destinationZoneId;
  /// Consistent replication group name.
  final pulumi.Input<String>? diskReplicaGroupName;
  /// . Field 'group_name' has been deprecated from provider version 1.245.0. New field 'disk_replica_group_name' instead.
  final pulumi.Input<String>? groupName;
  /// Whether to synchronize immediately. Value range:
  /// - true: Start data synchronization immediately.
  /// - false: Data Synchronization starts after the RPO time period.
  ///
  /// Default value: false.
  final pulumi.Input<bool>? oneShot;
  /// List of replication pair IDs contained in a consistent replication group.
  final pulumi.Input<List<String>>? pairIds;
  /// resource group ID of enterprise
  final pulumi.Input<String>? resourceGroupId;
  /// Specifies whether to enable the reverse replication sub-feature. Valid values: true and false. Default value: true.
  final pulumi.Input<bool>? reverseReplicate;
  /// The RPO value set by the consistency group in seconds. Currently only 900 seconds are supported.
  final pulumi.Input<int>? rpo;
  /// The ID of the region to which the production site belongs.
  final pulumi.Input<String> sourceRegionId;
  /// The ID of the zone to which the production site belongs.
  final pulumi.Input<String> sourceZoneId;
  /// The status of the consistent replication group. Possible values:
  /// - invalid: invalid. This state indicates that there is an exception to the replication pair in the consistent replication group.
  /// - creating: creating.
  /// - created: created.
  /// - create_failed: creation failed.
  /// - manual_syncing: in a single synchronization. If it is the first single synchronization, this status is also displayed in the synchronization.
  /// - syncing: synchronization. This state is the first time data is copied asynchronously between the master and slave disks.
  /// - normal: normal. When data replication is completed within the current cycle of asynchronous replication, it will be in this state.
  /// - stopping: stopping.
  /// - stopped: stopped.
  /// - stop_failed: Stop failed.
  /// - Failover: failover.
  /// - Failed: failover completed.
  /// - failover_failed: failover failed.
  /// - Reprotection: In reverse copy operation.
  /// - reprotect_failed: reverse replication failed.
  /// - deleting: deleting.
  /// - delete_failed: delete failed.
  /// - deleted: deleted.
  final pulumi.Input<String>? status;
  /// The tag of the resource
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiskReplicaGroupArgs].
  /// [description] The description of the consistent replication group.
  /// [destinationRegionId] The ID of the region to which the disaster recovery site belongs.
  /// [destinationZoneId] The ID of the zone to which the disaster recovery site belongs.
  /// [diskReplicaGroupName] Consistent replication group name.
  /// [groupName] . Field 'group_name' has been deprecated from provider version 1.245.0. New field 'disk_replica_group_name' instead.
  /// [oneShot] Whether to synchronize immediately. Value range:
  /// [pairIds] List of replication pair IDs contained in a consistent replication group.
  /// [resourceGroupId] resource group ID of enterprise
  /// [reverseReplicate] Specifies whether to enable the reverse replication sub-feature. Valid values: true and false. Default value: true.
  /// [rpo] The RPO value set by the consistency group in seconds. Currently only 900 seconds are supported.
  /// [sourceRegionId] The ID of the region to which the production site belongs.
  /// [sourceZoneId] The ID of the zone to which the production site belongs.
  /// [status] The status of the consistent replication group. Possible values:
  /// [tags] The tag of the resource
  DiskReplicaGroupArgs({
    String? description,
    required String destinationRegionId,
    required String destinationZoneId,
    String? diskReplicaGroupName,
    String? groupName,
    bool? oneShot,
    List<String>? pairIds,
    String? resourceGroupId,
    bool? reverseReplicate,
    int? rpo,
    required String sourceRegionId,
    required String sourceZoneId,
    String? status,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationRegionId = pulumi.Input.asInput<String>(destinationRegionId),
      destinationZoneId = pulumi.Input.asInput<String>(destinationZoneId),
      diskReplicaGroupName = pulumi.Input.asOptionalInput<String>(diskReplicaGroupName),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      oneShot = pulumi.Input.asOptionalInput<bool>(oneShot),
      pairIds = pulumi.Input.asOptionalInput<List<String>>(pairIds),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      reverseReplicate = pulumi.Input.asOptionalInput<bool>(reverseReplicate),
      rpo = pulumi.Input.asOptionalInput<int>(rpo),
      sourceRegionId = pulumi.Input.asInput<String>(sourceRegionId),
      sourceZoneId = pulumi.Input.asInput<String>(sourceZoneId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationRegionId': destinationRegionId,
      'destinationZoneId': destinationZoneId,
      'diskReplicaGroupName': ?diskReplicaGroupName,
      'groupName': ?groupName,
      'oneShot': ?oneShot,
      'pairIds': ?pairIds,
      'resourceGroupId': ?resourceGroupId,
      'reverseReplicate': ?reverseReplicate,
      'rpo': ?rpo,
      'sourceRegionId': sourceRegionId,
      'sourceZoneId': sourceZoneId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory DiskReplicaGroupArgs.fromMap(Map<String, dynamic> map) {
    return DiskReplicaGroupArgs(
      description: map['description'] == null ? null : map['description'] as String,
      destinationRegionId: map['destinationRegionId'] as String,
      destinationZoneId: map['destinationZoneId'] as String,
      diskReplicaGroupName: map['diskReplicaGroupName'] == null ? null : map['diskReplicaGroupName'] as String,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      oneShot: map['oneShot'] == null ? null : map['oneShot'] as bool,
      pairIds: map['pairIds'] == null ? null : (map['pairIds'] as List).cast<String>(),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      reverseReplicate: map['reverseReplicate'] == null ? null : map['reverseReplicate'] as bool,
      rpo: map['rpo'] == null ? null : map['rpo'] as int,
      sourceRegionId: map['sourceRegionId'] as String,
      sourceZoneId: map['sourceZoneId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

