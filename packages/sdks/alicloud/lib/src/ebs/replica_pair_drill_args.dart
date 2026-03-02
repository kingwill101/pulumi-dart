// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_replica_pair_drill_replica_pair_drill_args_doc}
/// The set of arguments for ReplicaPairDrill.
/// {@endtemplate}
/// {@macro pulumi_ebs_replica_pair_drill_replica_pair_drill_args_doc}
class ReplicaPairDrillArgs {
  /// Copy the ID of the pair. You can call DescribeDiskReplicaPairs to query the list of asynchronous replication pairs to obtain the replication pair ID.
  final pulumi.Input<String> pairId;

  /// Creates a new [ReplicaPairDrillArgs].
  /// [pairId] Copy the ID of the pair. You can call DescribeDiskReplicaPairs to query the list of asynchronous replication pairs to obtain the replication pair ID.
  ReplicaPairDrillArgs({
    required this.pairId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pairId': pairId,
    };
  }

  factory ReplicaPairDrillArgs.fromMap(Map<String, dynamic> map) {
    return ReplicaPairDrillArgs(
      pairId: (map['pairId'] as String).input(),
    );
  }
}

