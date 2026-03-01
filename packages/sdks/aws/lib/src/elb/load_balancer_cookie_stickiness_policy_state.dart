// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerCookieStickinessPolicy resources.
class LoadBalancerCookieStickinessPolicyState {
  /// The time period after which
  /// the session cookie should be considered stale, expressed in seconds.
  final pulumi.Input<int>? cookieExpirationPeriod;
  /// The load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  final pulumi.Input<int>? lbPort;
  /// The load balancer to which the policy
  /// should be attached.
  final pulumi.Input<String>? loadBalancer;
  /// The name of the stickiness policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LoadBalancerCookieStickinessPolicyState].
  /// [cookieExpirationPeriod] The time period after which
  /// [lbPort] The load balancer port to which the policy
  /// [loadBalancer] The load balancer to which the policy
  /// [name] The name of the stickiness policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LoadBalancerCookieStickinessPolicyState({
    pulumi.Output<int>? cookieExpirationPeriod,
    pulumi.Output<int>? lbPort,
    pulumi.Output<String>? loadBalancer,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      cookieExpirationPeriod = pulumi.Input.asOptionalInput<int>(cookieExpirationPeriod),
      lbPort = pulumi.Input.asOptionalInput<int>(lbPort),
      loadBalancer = pulumi.Input.asOptionalInput<String>(loadBalancer),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieExpirationPeriod': ?cookieExpirationPeriod,
      'lbPort': ?lbPort,
      'loadBalancer': ?loadBalancer,
      'name': ?name,
      'region': ?region,
    };
  }

  factory LoadBalancerCookieStickinessPolicyState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerCookieStickinessPolicyState(
      cookieExpirationPeriod: map['cookieExpirationPeriod'] == null ? null : pulumi.Output.create<int>(map['cookieExpirationPeriod'] as int),
      lbPort: map['lbPort'] == null ? null : pulumi.Output.create<int>(map['lbPort'] as int),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<String>(map['loadBalancer'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

