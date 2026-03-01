// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_set_condition.dart';

/// StatefulSetStatus represents the current state of a StatefulSet.
class StatefulSetStatus {
  /// Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
  final int? availableReplicas;
  /// collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final int? collisionCount;
  /// Represents the latest available observations of a statefulset's current state.
  final List<StatefulSetCondition>? conditions;
  /// currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  final int? currentReplicas;
  /// currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  final String? currentRevision;
  /// observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  final int? observedGeneration;
  /// readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
  final int? readyReplicas;
  /// replicas is the number of Pods created by the StatefulSet controller.
  final int replicas;
  /// updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  final String? updateRevision;
  /// updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  final int? updatedReplicas;

  /// Creates a new [StatefulSetStatus].
  /// [availableReplicas] Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
  /// [collisionCount] collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  /// [conditions] Represents the latest available observations of a statefulset's current state.
  /// [currentReplicas] currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  /// [currentRevision] currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  /// [observedGeneration] observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  /// [readyReplicas] readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
  /// [replicas] replicas is the number of Pods created by the StatefulSet controller.
  /// [updateRevision] updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  /// [updatedReplicas] updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  StatefulSetStatus({
    this.availableReplicas,
    this.collisionCount,
    this.conditions,
    this.currentReplicas,
    this.currentRevision,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
    this.updateRevision,
    this.updatedReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableReplicas': ?availableReplicas,
      'collisionCount': ?collisionCount,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<StatefulSetCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'currentReplicas': ?currentReplicas,
      'currentRevision': ?currentRevision,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': replicas,
      'updateRevision': ?updateRevision,
      'updatedReplicas': ?updatedReplicas,
    };
  }

  factory StatefulSetStatus.fromMap(Map<String, dynamic> map) {
    return StatefulSetStatus(
      availableReplicas: map['availableReplicas'] == null ? null : map['availableReplicas'] as int,
      collisionCount: map['collisionCount'] == null ? null : map['collisionCount'] as int,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<StatefulSetCondition>(map['conditions'], (value) => StatefulSetCondition.fromMap((value as Map).cast<String, dynamic>())),
      currentReplicas: map['currentReplicas'] == null ? null : map['currentReplicas'] as int,
      currentRevision: map['currentRevision'] == null ? null : map['currentRevision'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      readyReplicas: map['readyReplicas'] == null ? null : map['readyReplicas'] as int,
      replicas: map['replicas'] as int,
      updateRevision: map['updateRevision'] == null ? null : map['updateRevision'] as String,
      updatedReplicas: map['updatedReplicas'] == null ? null : map['updatedReplicas'] as int,
    );
  }
}

