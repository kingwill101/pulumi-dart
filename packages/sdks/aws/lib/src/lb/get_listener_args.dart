// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_listener_get_listener_args_doc}
/// Arguments for getListener.
/// {@endtemplate}
/// {@macro pulumi_lb_get_listener_get_listener_args_doc}
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

  /// Creates a new [GetListenerArgs].
  /// [arn] ARN of the listener. Required if `load_balancer_arn` and `port` is not set.
  /// [loadBalancerArn] ARN of the load balancer. Required if `arn` is not set.
  /// [port] Port of the listener. Required if `arn` is not set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  GetListenerArgs({
    this.arn,
    this.loadBalancerArn,
    this.port,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'loadBalancerArn': ?loadBalancerArn,
      'port': ?port,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetListenerArgs.fromMap(Map<String, dynamic> map) {
    return GetListenerArgs(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      loadBalancerArn: map['loadBalancerArn'] == null ? null : ((map['loadBalancerArn'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

