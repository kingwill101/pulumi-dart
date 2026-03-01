// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_set_condition_patch.dart';

/// ReplicaSetStatus represents the current status of a ReplicaSet.
class ReplicaSetStatusPatch {
  /// The number of available replicas (ready for at least minReadySeconds) for this replica set.
  final int? availableReplicas;
  /// Represents the latest available observations of a replica set's current state.
  final List<ReplicaSetConditionPatch>? conditions;
  /// The number of pods that have labels matching the labels of the pod template of the replicaset.
  final int? fullyLabeledReplicas;
  /// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  final int? observedGeneration;
  /// The number of ready replicas for this replica set.
  final int? readyReplicas;
  /// Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  final int? replicas;

  /// Creates a new [ReplicaSetStatusPatch].
  /// [availableReplicas] The number of available replicas (ready for at least minReadySeconds) for this replica set.
  /// [conditions] Represents the latest available observations of a replica set's current state.
  /// [fullyLabeledReplicas] The number of pods that have labels matching the labels of the pod template of the replicaset.
  /// [observedGeneration] ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  /// [readyReplicas] The number of ready replicas for this replica set.
  /// [replicas] Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  ReplicaSetStatusPatch({
    this.availableReplicas,
    this.conditions,
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableReplicas': ?availableReplicas,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ReplicaSetConditionPatch, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'fullyLabeledReplicas': ?fullyLabeledReplicas,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
    };
  }

  factory ReplicaSetStatusPatch.fromMap(Map<String, dynamic> map) {
    return ReplicaSetStatusPatch(
      availableReplicas: map['availableReplicas'] == null ? null : map['availableReplicas'] as int,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ReplicaSetConditionPatch>(map['conditions'], (value) => ReplicaSetConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
      fullyLabeledReplicas: map['fullyLabeledReplicas'] == null ? null : map['fullyLabeledReplicas'] as int,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      readyReplicas: map['readyReplicas'] == null ? null : map['readyReplicas'] as int,
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
    );
  }
}

