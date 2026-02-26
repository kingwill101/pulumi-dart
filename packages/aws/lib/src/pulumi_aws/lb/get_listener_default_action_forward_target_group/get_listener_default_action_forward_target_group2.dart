// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardTargetGroup2 {
  /// ARN of the listener. Required if <span pulumi-lang-nodejs="`loadBalancerArn`" pulumi-lang-dotnet="`LoadBalancerArn`" pulumi-lang-go="`loadBalancerArn`" pulumi-lang-python="`load_balancer_arn`" pulumi-lang-yaml="`loadBalancerArn`" pulumi-lang-java="`loadBalancerArn`">`load_balancer_arn`</span> and <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> is not set.
  final String arn;
  final int weight;

  GetListenerDefaultActionForwardTargetGroup2({
    required this.arn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['weight'] = weight;
    return map;
  }

  factory GetListenerDefaultActionForwardTargetGroup2.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardTargetGroup2(
      arn: map['arn'] as String,
      weight: map['weight'] as int,
    );
  }
}
