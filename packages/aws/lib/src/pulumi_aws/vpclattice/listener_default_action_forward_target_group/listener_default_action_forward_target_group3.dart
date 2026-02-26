// ignore_for_file: unused_element, unnecessary_cast

class ListenerDefaultActionForwardTargetGroup3 {
  /// ID or Amazon Resource Name (ARN) of the target group.
  final String? targetGroupIdentifier;

  /// Determines how requests are distributed to the target group. Only required if you specify multiple target groups for a forward action. For example, if you specify two target groups, one with a
  /// weight of 10 and the other with a weight of 20, the target group with a weight of 20 receives twice as many requests as the other target group. See [Listener rules](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules) in the AWS documentation for additional examples. Default: <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>.
  final int? weight;

  ListenerDefaultActionForwardTargetGroup3({
    this.targetGroupIdentifier,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetGroupIdentifierValue = targetGroupIdentifier;
    if (targetGroupIdentifierValue != null) {
      map['targetGroupIdentifier'] = targetGroupIdentifierValue;
    }
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    return map;
  }

  factory ListenerDefaultActionForwardTargetGroup3.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionForwardTargetGroup3(
      targetGroupIdentifier: map['targetGroupIdentifier'] == null
          ? null
          : map['targetGroupIdentifier'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
