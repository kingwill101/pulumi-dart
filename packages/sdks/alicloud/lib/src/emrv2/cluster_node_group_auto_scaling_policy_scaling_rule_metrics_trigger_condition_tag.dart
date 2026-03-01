// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag {
  /// The tag key for this scaling rule specific metrics trigger.
  final String key;
  /// The tag value for this scaling rule specific metrics trigger.
  final String? value;

  /// Creates a new [ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag].
  /// [key] The tag key for this scaling rule specific metrics trigger.
  /// [value] The tag value for this scaling rule specific metrics trigger.
  ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

