// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_get_disk_replica_pairs_get_disk_replica_pairs_args_doc}
/// Arguments for getDiskReplicaPairs.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_disk_replica_pairs_get_disk_replica_pairs_args_doc}
class GetDiskReplicaPairsArgs {
  /// A list of Disk Replica Pair IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Consistent Replication Group ID, you can specify a consistent replication group ID to query the replication pairs within the group.
  final pulumi.Input<String>? replicaGroupId;
  /// Get data for replication pairs where this Region is the production site or the disaster recovery site.
  final pulumi.Input<String>? site;

  /// Creates a new [GetDiskReplicaPairsArgs].
  /// [ids] A list of Disk Replica Pair IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [replicaGroupId] Consistent Replication Group ID, you can specify a consistent replication group ID to query the replication pairs within the group.
  /// [site] Get data for replication pairs where this Region is the production site or the disaster recovery site.
  const GetDiskReplicaPairsArgs({
    this.ids,
    this.outputFile,
    this.replicaGroupId,
    this.site,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'replicaGroupId': ?replicaGroupId,
      'site': ?site,
    };
  }

  factory GetDiskReplicaPairsArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskReplicaPairsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaGroupId: (() { final guardedValue = map['replicaGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      site: (() { final guardedValue = map['site']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

