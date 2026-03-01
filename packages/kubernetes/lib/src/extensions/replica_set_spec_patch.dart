// ignore_for_file: unused_element, unnecessary_cast

import '../core/pod_template_spec_patch.dart';
import '../meta/label_selector_patch.dart';

/// ReplicaSetSpec is the specification of a ReplicaSet.
class ReplicaSetSpecPatch {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  final int? minReadySeconds;
  /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  final int? replicas;
  /// Selector is a label query over pods that should match the replica count. If the selector is empty, it is defaulted to the labels present on the pod template. Label keys and values that must match in order to be controlled by this replica set. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final LabelSelectorPatch? selector;
  /// Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  final PodTemplateSpecPatch? template;

  /// Creates a new [ReplicaSetSpecPatch].
  /// [minReadySeconds] Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  /// [replicas] Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  /// [selector] Selector is a label query over pods that should match the replica count. If the selector is empty, it is defaulted to the labels present on the pod template. Label keys and values that must match in order to be controlled by this replica set. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [template] Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  ReplicaSetSpecPatch({
    this.minReadySeconds,
    this.replicas,
    this.selector,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'replicas': ?replicas,
      'selector': ?selector == null ? null : selector!.toMap(),
      'template': ?template == null ? null : template!.toMap(),
    };
  }

  factory ReplicaSetSpecPatch.fromMap(Map<String, dynamic> map) {
    return ReplicaSetSpecPatch(
      minReadySeconds: map['minReadySeconds'] == null ? null : map['minReadySeconds'] as int,
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      selector: map['selector'] == null ? null : LabelSelectorPatch.fromMap((map['selector'] as Map).cast<String, dynamic>()),
      template: map['template'] == null ? null : PodTemplateSpecPatch.fromMap((map['template'] as Map).cast<String, dynamic>()),
    );
  }
}

