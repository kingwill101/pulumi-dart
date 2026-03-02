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
  KubernetesAutoscalerNodepool({
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
      id: map['id'] == null ? null : (map['id'] as String).input(),
      labels: map['labels'] == null ? null : (map['labels'] as String).input(),
      taints: map['taints'] == null ? null : (map['taints'] as String).input(),
    );
  }
}

