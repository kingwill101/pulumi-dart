// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleActionForwardTargetGroup {
  /// ARN of the Listener Rule.
  /// Either <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> or <span pulumi-lang-nodejs="`listenerArn`" pulumi-lang-dotnet="`ListenerArn`" pulumi-lang-go="`listenerArn`" pulumi-lang-python="`listener_arn`" pulumi-lang-yaml="`listenerArn`" pulumi-lang-java="`listenerArn`">`listener_arn`</span> must be set.
  final String arn;

  /// Weight of the target group.
  final int weight;

  GetListenerRuleActionForwardTargetGroup({
    required this.arn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['weight'] = weight;
    return map;
  }

  factory GetListenerRuleActionForwardTargetGroup.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleActionForwardTargetGroup(
      arn: map['arn'] as String,
      weight: map['weight'] as int,
    );
  }
}
