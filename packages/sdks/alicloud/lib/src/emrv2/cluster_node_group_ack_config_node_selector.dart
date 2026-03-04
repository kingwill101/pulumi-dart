// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupAckConfigNodeSelector {
  /// The tag key for this scaling rule specific metrics trigger.
  final pulumi.Input<String> key;

  /// The tag value for this scaling rule specific metrics trigger.
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterNodeGroupAckConfigNodeSelector].
  /// [key] The tag key for this scaling rule specific metrics trigger.
  /// [value] The tag value for this scaling rule specific metrics trigger.
  ClusterNodeGroupAckConfigNodeSelector({required this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': ?value};
  }

  factory ClusterNodeGroupAckConfigNodeSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeGroupAckConfigNodeSelector(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
