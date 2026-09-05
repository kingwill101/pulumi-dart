// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_listener_get_listener_args_doc}
/// Arguments for getListener.
/// {@endtemplate}
/// {@macro pulumi_alb_get_listener_get_listener_args_doc}
class GetListenerArgs {
  /// ARN of the listener. Required if `loadBalancerArn` and `port` is not set.
  final pulumi.Input<String?>? arn;
  /// ARN of the load balancer. Required if `arn` is not set.
  final pulumi.Input<String?>? loadBalancerArn;
  /// Port of the listener. Required if `arn` is not set.
  final pulumi.Input<int?>? port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetListenerArgs].
  /// [arn] ARN of the listener. Required if `loadBalancerArn` and `port` is not set.
  /// [loadBalancerArn] ARN of the load balancer. Required if `arn` is not set.
  /// [port] Port of the listener. Required if `arn` is not set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  const GetListenerArgs({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerArn: (() { final guardedValue = map['loadBalancerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
