// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesNodePoolsNodepoolLabel {
  /// The key of a taint.
  final pulumi.Input<String> key;

  /// The value of a taint.
  final pulumi.Input<String> value;

  /// Creates a new [GetKubernetesNodePoolsNodepoolLabel].
  /// [key] The key of a taint.
  /// [value] The value of a taint.
  GetKubernetesNodePoolsNodepoolLabel({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory GetKubernetesNodePoolsNodepoolLabel.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKubernetesNodePoolsNodepoolLabel(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
