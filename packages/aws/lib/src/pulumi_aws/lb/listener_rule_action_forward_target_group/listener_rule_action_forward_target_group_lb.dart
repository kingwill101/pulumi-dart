// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionForwardTargetGroupLb {
  /// The Amazon Resource Name (ARN) of the target group.
  final String arn;

  /// The weight. The range is 0 to 999.
  final int? weight;

  ListenerRuleActionForwardTargetGroupLb({
    required this.arn,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    return map;
  }

  factory ListenerRuleActionForwardTargetGroupLb.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleActionForwardTargetGroupLb(
      arn: map['arn'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
