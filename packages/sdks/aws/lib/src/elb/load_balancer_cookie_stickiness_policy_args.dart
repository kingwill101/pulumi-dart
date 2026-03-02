// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elb_load_balancer_cookie_stickiness_policy_load_balancer_cookie_stickiness_policy_args_doc}
/// The set of arguments for LoadBalancerCookieStickinessPolicy.
/// {@endtemplate}
/// {@macro pulumi_elb_load_balancer_cookie_stickiness_policy_load_balancer_cookie_stickiness_policy_args_doc}
class LoadBalancerCookieStickinessPolicyArgs {
  /// The time period after which
  /// the session cookie should be considered stale, expressed in seconds.
  final pulumi.Input<int>? cookieExpirationPeriod;
  /// The load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  final pulumi.Input<int> lbPort;
  /// The load balancer to which the policy
  /// should be attached.
  final pulumi.Input<String> loadBalancer;
  /// The name of the stickiness policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LoadBalancerCookieStickinessPolicyArgs].
  /// [cookieExpirationPeriod] The time period after which
  /// [lbPort] The load balancer port to which the policy
  /// [loadBalancer] The load balancer to which the policy
  /// [name] The name of the stickiness policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LoadBalancerCookieStickinessPolicyArgs({
    this.cookieExpirationPeriod,
    required this.lbPort,
    required this.loadBalancer,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieExpirationPeriod': ?cookieExpirationPeriod,
      'lbPort': lbPort,
      'loadBalancer': loadBalancer,
      'name': ?name,
      'region': ?region,
    };
  }

  factory LoadBalancerCookieStickinessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerCookieStickinessPolicyArgs(
      cookieExpirationPeriod: map['cookieExpirationPeriod'] == null ? null : ((map['cookieExpirationPeriod'] as int).input()).input(),
      lbPort: (map['lbPort'] as int).input(),
      loadBalancer: (map['loadBalancer'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

