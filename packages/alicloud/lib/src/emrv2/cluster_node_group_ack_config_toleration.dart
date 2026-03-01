// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupAckConfigToleration {
  /// The effect of ack cluster tolerations.
  final String? effect;
  /// The tag key for this scaling rule specific metrics trigger.
  final String? key;
  /// The operator of ack cluster tolerations.
  final String? operator;
  /// The tag value for this scaling rule specific metrics trigger.
  final String? value;

  /// Creates a new [ClusterNodeGroupAckConfigToleration].
  /// [effect] The effect of ack cluster tolerations.
  /// [key] The tag key for this scaling rule specific metrics trigger.
  /// [operator] The operator of ack cluster tolerations.
  /// [value] The tag value for this scaling rule specific metrics trigger.
  ClusterNodeGroupAckConfigToleration({
    this.effect,
    this.key,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory ClusterNodeGroupAckConfigToleration.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAckConfigToleration(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

