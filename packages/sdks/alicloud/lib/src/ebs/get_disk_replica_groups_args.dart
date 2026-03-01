// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_get_disk_replica_groups_get_disk_replica_groups_args_doc}
/// Arguments for getDiskReplicaGroups.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_disk_replica_groups_get_disk_replica_groups_args_doc}
class GetDiskReplicaGroupsArgs {
  /// A list of Disk Replica Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDiskReplicaGroupsArgs].
  /// [ids] A list of Disk Replica Group IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetDiskReplicaGroupsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetDiskReplicaGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskReplicaGroupsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

