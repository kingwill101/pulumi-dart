// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'node_taint2.dart';

/// Collection of Kubernetes [node taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration).
class NodeTaints2 {
  /// List of node taints.
  final List<NodeTaint2>? taints;

  NodeTaints2({
    this.taints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final taintsValue = taints;
    if (taintsValue != null) {
      map['taints'] = Input.encodeList<NodeTaint2, Map<String, dynamic>>(
          taintsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NodeTaints2.fromMap(Map<String, dynamic> map) {
    return NodeTaints2(
      taints: map['taints'] == null
          ? null
          : Input.decodeList<NodeTaint2>(
              map['taints'],
              (value) =>
                  NodeTaint2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
