// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesAutoscalerNodepool {
  /// The scaling group id of the groups configured for cluster-autoscaler.
  final pulumi.Input<String>? id;
  /// The labels for the nodes in scaling group.
  final pulumi.Input<String>? labels;
  /// The taints for the nodes in scaling group.
  final pulumi.Input<String>? taints;

  /// Creates a new [KubernetesAutoscalerNodepool].
  /// [id] The scaling group id of the groups configured for cluster-autoscaler.
  /// [labels] The labels for the nodes in scaling group.
  /// [taints] The taints for the nodes in scaling group.
  const KubernetesAutoscalerNodepool({
    this.id,
    this.labels,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'labels': ?labels,
      'taints': ?taints,
    };
  }

  factory KubernetesAutoscalerNodepool.fromMap(Map<String, dynamic> map) {
    return KubernetesAutoscalerNodepool(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

