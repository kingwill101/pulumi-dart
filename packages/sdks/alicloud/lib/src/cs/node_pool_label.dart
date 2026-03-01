// ignore_for_file: unused_element, unnecessary_cast


class NodePoolLabel {
  /// The label key.
  final String key;
  /// The label value.
  final String? value;

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
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

