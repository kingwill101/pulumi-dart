// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getListener.
class GetListenerArgs2 {
  /// ARN of the listener. Required if <span pulumi-lang-nodejs="`loadBalancerArn`" pulumi-lang-dotnet="`LoadBalancerArn`" pulumi-lang-go="`loadBalancerArn`" pulumi-lang-python="`load_balancer_arn`" pulumi-lang-yaml="`loadBalancerArn`" pulumi-lang-java="`loadBalancerArn`">`load_balancer_arn`</span> and <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span> is not set.
  final Input<String>? arn;

  /// ARN of the load balancer. Required if <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> is not set.
  final Input<String>? loadBalancerArn;

  /// Port of the listener. Required if <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> is not set.
  final Input<int>? port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<Map<String, String>>? tags;

  GetListenerArgs2({
    this.arn,
    this.loadBalancerArn,
    this.port,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final loadBalancerArnValue = loadBalancerArn;
    if (loadBalancerArnValue != null) {
      map['loadBalancerArn'] = loadBalancerArnValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetListenerArgs2.fromMap(Map<String, dynamic> map) {
    return GetListenerArgs2(
      arn: Input.asOptionalInput<String>(map['arn']),
      loadBalancerArn: Input.asOptionalInput<String>(map['loadBalancerArn']),
      port: Input.asOptionalInput<int>(map['port']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
