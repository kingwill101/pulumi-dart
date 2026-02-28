// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_spec.dart';

/// Details of the TPU resource(s) being requested.
class Tpu {
  /// The TPU node(s) being requested.
  final List<NodeSpec>? nodeSpec;

  /// Creates a new [Tpu].
  /// [nodeSpec] The TPU node(s) being requested.
  Tpu({
    this.nodeSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodeSpecValue = nodeSpec;
    if (nodeSpecValue != null) {
      map['nodeSpec'] = pulumi.Input.encodeList<NodeSpec, Map<String, dynamic>>(
          nodeSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory Tpu.fromMap(Map<String, dynamic> map) {
    return Tpu(
      nodeSpec: map['nodeSpec'] == null
          ? null
          : pulumi.Input.decodeList<NodeSpec>(
              map['nodeSpec'],
              (value) =>
                  NodeSpec.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
