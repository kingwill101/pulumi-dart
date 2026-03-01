// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupAckConfigNodeSelector {
  /// The tag key for this scaling rule specific metrics trigger.
  final String key;
  /// The tag value for this scaling rule specific metrics trigger.
  final String? value;

  /// Creates a new [ClusterNodeGroupAckConfigNodeSelector].
  /// [key] The tag key for this scaling rule specific metrics trigger.
  /// [value] The tag value for this scaling rule specific metrics trigger.
  ClusterNodeGroupAckConfigNodeSelector({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory ClusterNodeGroupAckConfigNodeSelector.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAckConfigNodeSelector(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

