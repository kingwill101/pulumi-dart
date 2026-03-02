// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolLabel {
  /// The label key.
  final pulumi.Input<String> key;
  /// The label value.
  final pulumi.Input<String>? value;

  /// Creates a new [NodePoolLabel].
  /// [key] The label key.
  /// [value] The label value.
  NodePoolLabel({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory NodePoolLabel.fromMap(Map<String, dynamic> map) {
    return NodePoolLabel(
      key: (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

