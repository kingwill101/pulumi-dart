// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'node_taint.dart';

/// Collection of Kubernetes [node taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration).
class NodeTaints {
  /// List of node taints.
  final List<NodeTaint>? taints;

  NodeTaints({
    this.taints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final taintsValue = taints;
    if (taintsValue != null) {
      map['taints'] = Input.encodeList<NodeTaint, Map<String, dynamic>>(
          taintsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NodeTaints.fromMap(Map<String, dynamic> map) {
    return NodeTaints(
      taints: map['taints'] == null
          ? null
          : Input.decodeList<NodeTaint>(
              map['taints'],
              (value) =>
                  NodeTaint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
