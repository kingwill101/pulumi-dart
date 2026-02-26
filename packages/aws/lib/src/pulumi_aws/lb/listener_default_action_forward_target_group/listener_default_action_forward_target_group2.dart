// ignore_for_file: unused_element, unnecessary_cast

class ListenerDefaultActionForwardTargetGroup2 {
  /// ARN of the target group.
  ///
  /// The following arguments are optional:
  final String arn;

  /// Weight. The range is 0 to 999.
  final int? weight;

  ListenerDefaultActionForwardTargetGroup2({
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

  factory ListenerDefaultActionForwardTargetGroup2.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionForwardTargetGroup2(
      arn: map['arn'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
