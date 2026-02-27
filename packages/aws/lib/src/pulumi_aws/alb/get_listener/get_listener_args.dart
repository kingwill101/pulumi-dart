// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getListener.
class GetListenerArgs {
  /// ARN of the listener. Required if `load_balancer_arn` and `port` is not set.
  final pulumi.Input<String>? arn;

  /// ARN of the load balancer. Required if `arn` is not set.
  final pulumi.Input<String>? loadBalancerArn;

  /// Port of the listener. Required if `arn` is not set.
  final pulumi.Input<int>? port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  GetListenerArgs({
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

  factory GetListenerArgs.fromMap(Map<String, dynamic> map) {
    return GetListenerArgs(
      arn: pulumi.Input.asOptionalInput<String>(map['arn']),
      loadBalancerArn:
          pulumi.Input.asOptionalInput<String>(map['loadBalancerArn']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
