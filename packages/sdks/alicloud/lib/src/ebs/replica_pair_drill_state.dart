// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicaPairDrill resources.
class ReplicaPairDrillState {
  /// Copy the ID of the pair. You can call DescribeDiskReplicaPairs to query the list of asynchronous replication pairs to obtain the replication pair ID.
  final pulumi.Input<String>? pairId;
  /// The first ID of the resource.
  final pulumi.Input<String>? replicaPairDrillId;
  /// Walkthrough status. _failed: Execution failed._failed: Cleanup failed.
  final pulumi.Input<String>? status;

  /// Creates a new [ReplicaPairDrillState].
  /// [pairId] Copy the ID of the pair. You can call DescribeDiskReplicaPairs to query the list of asynchronous replication pairs to obtain the replication pair ID.
  /// [replicaPairDrillId] The first ID of the resource.
  /// [status] Walkthrough status. _failed: Execution failed._failed: Cleanup failed.
  ReplicaPairDrillState({
    this.pairId,
    this.replicaPairDrillId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pairId': ?pairId,
      'replicaPairDrillId': ?replicaPairDrillId,
      'status': ?status,
    };
  }

  factory ReplicaPairDrillState.fromMap(Map<String, dynamic> map) {
    return ReplicaPairDrillState(
      pairId: map['pairId'] == null ? null : (map['pairId']! as String).input(),
      replicaPairDrillId: map['replicaPairDrillId'] == null ? null : (map['replicaPairDrillId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

