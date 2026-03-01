// ignore_for_file: unused_element, unnecessary_cast

import '../core/pod_template_spec.dart';
import '../meta/label_selector.dart';
import 'daemon_set_update_strategy.dart';

/// DaemonSetSpec is the specification of a daemon set.
class DaemonSetSpec {
  /// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  final int? minReadySeconds;
  /// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  final int? revisionHistoryLimit;
  /// A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final LabelSelector selector;
  /// An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). The only allowed template.spec.restartPolicy value is "Always". More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  final PodTemplateSpec template;
  /// An update strategy to replace existing DaemonSet pods with new pods.
  final DaemonSetUpdateStrategy? updateStrategy;

  /// Creates a new [DaemonSetSpec].
  /// [minReadySeconds] The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  /// [revisionHistoryLimit] The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  /// [selector] A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// [template] An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). The only allowed template.spec.restartPolicy value is "Always". More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  /// [updateStrategy] An update strategy to replace existing DaemonSet pods with new pods.
  DaemonSetSpec({
    this.minReadySeconds,
    this.revisionHistoryLimit,
    required this.selector,
    required this.template,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minReadySeconds': ?minReadySeconds,
      'revisionHistoryLimit': ?revisionHistoryLimit,
      'selector': selector.toMap(),
      'template': template.toMap(),
      'updateStrategy': ?updateStrategy == null ? null : updateStrategy!.toMap(),
    };
  }

  factory DaemonSetSpec.fromMap(Map<String, dynamic> map) {
    return DaemonSetSpec(
      minReadySeconds: map['minReadySeconds'] == null ? null : map['minReadySeconds'] as int,
      revisionHistoryLimit: map['revisionHistoryLimit'] == null ? null : map['revisionHistoryLimit'] as int,
      selector: LabelSelector.fromMap((map['selector'] as Map).cast<String, dynamic>()),
      template: PodTemplateSpec.fromMap((map['template'] as Map).cast<String, dynamic>()),
      updateStrategy: map['updateStrategy'] == null ? null : DaemonSetUpdateStrategy.fromMap((map['updateStrategy'] as Map).cast<String, dynamic>()),
    );
  }
}

