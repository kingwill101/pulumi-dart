// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupAckConfigCustomLabel {
  /// The tag key for this scaling rule specific metrics trigger.
  final pulumi.Input<String> key;
  /// The tag value for this scaling rule specific metrics trigger.
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterNodeGroupAckConfigCustomLabel].
  /// [key] The tag key for this scaling rule specific metrics trigger.
  /// [value] The tag value for this scaling rule specific metrics trigger.
  ClusterNodeGroupAckConfigCustomLabel({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory ClusterNodeGroupAckConfigCustomLabel.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAckConfigCustomLabel(
      key: (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

