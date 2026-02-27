// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LoadBalancerCookieStickinessPolicy.
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

  LoadBalancerCookieStickinessPolicyArgs({
    this.cookieExpirationPeriod,
    required this.lbPort,
    required this.loadBalancer,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cookieExpirationPeriodValue = cookieExpirationPeriod;
    if (cookieExpirationPeriodValue != null) {
      map['cookieExpirationPeriod'] = cookieExpirationPeriodValue;
    }
    map['lbPort'] = lbPort;
    map['loadBalancer'] = loadBalancer;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LoadBalancerCookieStickinessPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return LoadBalancerCookieStickinessPolicyArgs(
      cookieExpirationPeriod:
          pulumi.Input.asOptionalInput<int>(map['cookieExpirationPeriod']),
      lbPort: pulumi.Input.asInput<int>(map['lbPort']),
      loadBalancer: pulumi.Input.asInput<String>(map['loadBalancer']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
