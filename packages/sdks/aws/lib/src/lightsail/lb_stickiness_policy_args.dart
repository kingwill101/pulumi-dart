// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_lb_stickiness_policy_lb_stickiness_policy_args_doc}
/// The set of arguments for LbStickinessPolicy.
/// {@endtemplate}
/// {@macro pulumi_lightsail_lb_stickiness_policy_lb_stickiness_policy_args_doc}
class LbStickinessPolicyArgs {
  /// Cookie duration in seconds. This determines the length of the session stickiness.
  final pulumi.Input<int> cookieDuration;

  /// Whether to enable session stickiness for the load balancer.
  final pulumi.Input<bool> enabled;

  /// Name of the load balancer to which you want to enable session stickiness.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LbStickinessPolicyArgs].
  /// [cookieDuration] Cookie duration in seconds. This determines the length of the session stickiness.
  /// [enabled] Whether to enable session stickiness for the load balancer.
  /// [lbName] Name of the load balancer to which you want to enable session stickiness.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LbStickinessPolicyArgs({
    required this.cookieDuration,
    required this.enabled,
    required this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieDuration': cookieDuration,
      'enabled': enabled,
      'lbName': lbName,
      'region': ?region,
    };
  }

  factory LbStickinessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LbStickinessPolicyArgs(
      cookieDuration: pulumi.Input.fromValue(map['cookieDuration'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      lbName: pulumi.Input.fromValue(map['lbName'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
