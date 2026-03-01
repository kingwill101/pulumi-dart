// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupAckConfigCustomAnnotation {
  /// The tag key for this scaling rule specific metrics trigger.
  final String key;
  /// The tag value for this scaling rule specific metrics trigger.
  final String? value;

  /// Creates a new [ClusterNodeGroupAckConfigCustomAnnotation].
  /// [key] The tag key for this scaling rule specific metrics trigger.
  /// [value] The tag value for this scaling rule specific metrics trigger.
  ClusterNodeGroupAckConfigCustomAnnotation({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory ClusterNodeGroupAckConfigCustomAnnotation.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAckConfigCustomAnnotation(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

