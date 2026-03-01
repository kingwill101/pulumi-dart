// ignore_for_file: unused_element, unnecessary_cast

class ListenerDefaultActionForwardTargetGroup {
  /// ARN of the target group.
  ///
  /// The following arguments are optional:
  final String arn;

  /// Weight. The range is 0 to 999.
  final int? weight;

  /// Creates a new [ListenerDefaultActionForwardTargetGroup].
  /// [arn] ARN of the target group.
  /// [weight] Weight. The range is 0 to 999.
  ListenerDefaultActionForwardTargetGroup({required this.arn, this.weight});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'weight': ?weight};
  }

  factory ListenerDefaultActionForwardTargetGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListenerDefaultActionForwardTargetGroup(
      arn: map['arn'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
