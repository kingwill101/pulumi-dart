// ignore_for_file: unused_element, unnecessary_cast

import '../core/pod_template_spec_patch.dart';
import '../meta/label_selector_patch.dart';
import 'daemon_set_update_strategy_patch.dart';

/// DaemonSetSpec is the specification of a daemon set.
class DaemonSetSpecPatch {
  /// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final int? minReadySeconds;
  /// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final int? revisionHistoryLimit;
  /// A label query over pods that are managed by the daemon set. Must match in order to be controlled. If empty, defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final LabelSelectorPatch? selector;
  /// An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  final PodTemplateSpecPatch? template;
  /// DEPRECATED. A sequence number representing a specific generation of the template. Populated by the system. It can be set only during the creation.
  final int? templateGeneration;
  /// An update strategy to replace existing DaemonSet pods with new pods.
  final DaemonSetUpdateStrategyPatch? updateStrategy;

  /// Creates a new [DaemonSetSpecPatch].
  /// [minReadySeconds] The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  /// [revisionHistoryLimit] The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  /// [selector] A label query over pods that are managed by the daemon set. Must match in order to be controlled. If empty, defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [template] An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  /// [templateGeneration] DEPRECATED. A sequence number representing a specific generation of the template. Populated by the system. It can be set only during the creation.
  /// [updateStrategy] An update strategy to replace existing DaemonSet pods with new pods.
  DaemonSetSpecPatch({
    this.minReadySeconds,
    this.revisionHistoryLimit,
    this.selector,
    this.template,
    this.templateGeneration,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'revisionHistoryLimit': ?revisionHistoryLimit,
      'selector': ?selector == null ? null : selector!.toMap(),
      'template': ?template == null ? null : template!.toMap(),
      'templateGeneration': ?templateGeneration,
      'updateStrategy': ?updateStrategy == null ? null : updateStrategy!.toMap(),
    };
  }

  factory DaemonSetSpecPatch.fromMap(Map<String, dynamic> map) {
    return DaemonSetSpecPatch(
      minReadySeconds: map['minReadySeconds'] == null ? null : map['minReadySeconds'] as int,
      revisionHistoryLimit: map['revisionHistoryLimit'] == null ? null : map['revisionHistoryLimit'] as int,
      selector: map['selector'] == null ? null : LabelSelectorPatch.fromMap((map['selector'] as Map).cast<String, dynamic>()),
      template: map['template'] == null ? null : PodTemplateSpecPatch.fromMap((map['template'] as Map).cast<String, dynamic>()),
      templateGeneration: map['templateGeneration'] == null ? null : map['templateGeneration'] as int,
      updateStrategy: map['updateStrategy'] == null ? null : DaemonSetUpdateStrategyPatch.fromMap((map['updateStrategy'] as Map).cast<String, dynamic>()),
    );
  }
}

