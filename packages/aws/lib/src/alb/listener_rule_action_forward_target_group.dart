// ignore_for_file: unused_element, unnecessary_cast


class ListenerRuleActionForwardTargetGroup {
  /// The Amazon Resource Name (ARN) of the target group.
  final String arn;
  /// The weight. The range is 0 to 999.
  final int? weight;

  /// Creates a new [ListenerRuleActionForwardTargetGroup].
  /// [arn] The Amazon Resource Name (ARN) of the target group.
  /// [weight] The weight. The range is 0 to 999.
  ListenerRuleActionForwardTargetGroup({
    required this.arn,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'weight': ?weight,
    };
  }

  factory ListenerRuleActionForwardTargetGroup.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForwardTargetGroup(
      arn: map['arn'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

