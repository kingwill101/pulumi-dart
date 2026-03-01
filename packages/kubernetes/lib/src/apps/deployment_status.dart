// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_condition.dart';

/// DeploymentStatus is the most recently observed status of the Deployment.
class DeploymentStatus {
  /// Total number of available non-terminating pods (ready for at least minReadySeconds) targeted by this deployment.
  final int? availableReplicas;
  /// Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  final int? collisionCount;
  /// Represents the latest available observations of a deployment's current state.
  final List<DeploymentCondition>? conditions;
  /// The generation observed by the deployment controller.
  final int? observedGeneration;
  /// Total number of non-terminating pods targeted by this Deployment with a Ready Condition.
  final int? readyReplicas;
  /// Total number of non-terminating pods targeted by this deployment (their labels match the selector).
  final int? replicas;
  /// Total number of terminating pods targeted by this deployment. Terminating pods have a non-null .metadata.deletionTimestamp and have not yet reached the Failed or Succeeded .status.phase.
  ///
  /// This is a beta field and requires enabling DeploymentReplicaSetTerminatingReplicas feature (enabled by default).
  final int? terminatingReplicas;
  /// Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  final int? unavailableReplicas;
  /// Total number of non-terminating pods targeted by this deployment that have the desired template spec.
  final int? updatedReplicas;

  /// Creates a new [DeploymentStatus].
  /// [availableReplicas] Total number of available non-terminating pods (ready for at least minReadySeconds) targeted by this deployment.
  /// [collisionCount] Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  /// [conditions] Represents the latest available observations of a deployment's current state.
  /// [observedGeneration] The generation observed by the deployment controller.
  /// [readyReplicas] Total number of non-terminating pods targeted by this Deployment with a Ready Condition.
  /// [replicas] Total number of non-terminating pods targeted by this deployment (their labels match the selector).
  /// [terminatingReplicas] Total number of terminating pods targeted by this deployment. Terminating pods have a non-null .metadata.deletionTimestamp and have not yet reached the Failed or Succeeded .status.phase.
  /// [unavailableReplicas] Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  /// [updatedReplicas] Total number of non-terminating pods targeted by this deployment that have the desired template spec.
  DeploymentStatus({
    this.availableReplicas,
    this.collisionCount,
    this.conditions,
    this.observedGeneration,
    this.readyReplicas,
    this.replicas,
    this.terminatingReplicas,
    this.unavailableReplicas,
    this.updatedReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableReplicas': ?availableReplicas,
      'collisionCount': ?collisionCount,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<DeploymentCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
      'terminatingReplicas': ?terminatingReplicas,
      'unavailableReplicas': ?unavailableReplicas,
      'updatedReplicas': ?updatedReplicas,
    };
  }

  factory DeploymentStatus.fromMap(Map<String, dynamic> map) {
    return DeploymentStatus(
      availableReplicas: map['availableReplicas'] == null ? null : map['availableReplicas'] as int,
      collisionCount: map['collisionCount'] == null ? null : map['collisionCount'] as int,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<DeploymentCondition>(map['conditions'], (value) => DeploymentCondition.fromMap((value as Map).cast<String, dynamic>())),
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      readyReplicas: map['readyReplicas'] == null ? null : map['readyReplicas'] as int,
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      terminatingReplicas: map['terminatingReplicas'] == null ? null : map['terminatingReplicas'] as int,
      unavailableReplicas: map['unavailableReplicas'] == null ? null : map['unavailableReplicas'] as int,
      updatedReplicas: map['updatedReplicas'] == null ? null : map['updatedReplicas'] as int,
    );
  }
}

