// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_taint_container_v1beta1.dart';

/// Collection of Kubernetes [node taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration).
class NodeTaintsContainerV1beta1 {
  /// List of node taints.
  final List<NodeTaintContainerV1beta1>? taints;

  NodeTaintsContainerV1beta1({
    this.taints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final taintsValue = taints;
    if (taintsValue != null) {
      map['taints'] = pulumi.Input.encodeList<NodeTaintContainerV1beta1,
          Map<String, dynamic>>(taintsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NodeTaintsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeTaintsContainerV1beta1(
      taints: map['taints'] == null
          ? null
          : pulumi.Input.decodeList<NodeTaintContainerV1beta1>(
              map['taints'],
              (value) => NodeTaintContainerV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
