// ignore_for_file: unused_element, unnecessary_cast


/// Hyper-V Replica Azure specific input for creating a protection profile.
class HyperVReplicaAzurePolicyInput {
  /// The interval (in hours) at which Hyper-V Replica should create an application consistent snapshot within the VM.
  final int? applicationConsistentSnapshotFrequencyInHours;
  /// The class type.
  /// Expected value is 'HyperVReplicaAzure'.
  final String instanceType;
  /// The scheduled start time for the initial replication. If this parameter is Null, the initial replication starts immediately.
  final String? onlineReplicationStartTime;
  /// The duration (in hours) to which point the recovery history needs to be maintained.
  final int? recoveryPointHistoryDuration;
  /// The replication interval.
  final int? replicationInterval;
  /// The list of storage accounts to which the VMs in the primary cloud can replicate to.
  final List<String>? storageAccounts;

  /// Creates a new [HyperVReplicaAzurePolicyInput].
  /// [applicationConsistentSnapshotFrequencyInHours] The interval (in hours) at which Hyper-V Replica should create an application consistent snapshot within the VM.
  /// [instanceType] The class type.
  /// [onlineReplicationStartTime] The scheduled start time for the initial replication. If this parameter is Null, the initial replication starts immediately.
  /// [recoveryPointHistoryDuration] The duration (in hours) to which point the recovery history needs to be maintained.
  /// [replicationInterval] The replication interval.
  /// [storageAccounts] The list of storage accounts to which the VMs in the primary cloud can replicate to.
  HyperVReplicaAzurePolicyInput({
    this.applicationConsistentSnapshotFrequencyInHours,
    required this.instanceType,
    this.onlineReplicationStartTime,
    this.recoveryPointHistoryDuration,
    this.replicationInterval,
    this.storageAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInHours': ?applicationConsistentSnapshotFrequencyInHours,
      'instanceType': instanceType,
      'onlineReplicationStartTime': ?onlineReplicationStartTime,
      'recoveryPointHistoryDuration': ?recoveryPointHistoryDuration,
      'replicationInterval': ?replicationInterval,
      'storageAccounts': ?storageAccounts,
    };
  }

  factory HyperVReplicaAzurePolicyInput.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaAzurePolicyInput(
      applicationConsistentSnapshotFrequencyInHours: map['applicationConsistentSnapshotFrequencyInHours'] == null ? null : map['applicationConsistentSnapshotFrequencyInHours'] as int,
      instanceType: map['instanceType'] as String,
      onlineReplicationStartTime: map['onlineReplicationStartTime'] == null ? null : map['onlineReplicationStartTime'] as String,
      recoveryPointHistoryDuration: map['recoveryPointHistoryDuration'] == null ? null : map['recoveryPointHistoryDuration'] as int,
      replicationInterval: map['replicationInterval'] == null ? null : map['replicationInterval'] as int,
      storageAccounts: map['storageAccounts'] == null ? null : (map['storageAccounts'] as List).cast<String>(),
    );
  }
}

