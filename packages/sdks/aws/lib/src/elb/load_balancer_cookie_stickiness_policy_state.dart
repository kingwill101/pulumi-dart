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
    this.cookieExpirationPeriod,
    this.lbPort,
    this.loadBalancer,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieExpirationPeriod': ?cookieExpirationPeriod,
      'lbPort': ?lbPort,
      'loadBalancer': ?loadBalancer,
      'name': ?name,
      'region': ?region,
    };
  }

  factory LoadBalancerCookieStickinessPolicyState.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerCookieStickinessPolicyState(
      cookieExpirationPeriod: (() {
        final guardedValue = map['cookieExpirationPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      lbPort: (() {
        final guardedValue = map['lbPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      loadBalancer: (() {
        final guardedValue = map['loadBalancer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
