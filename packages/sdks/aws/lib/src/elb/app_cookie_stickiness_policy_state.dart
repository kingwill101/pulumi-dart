// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCookieStickinessPolicy resources.
class AppCookieStickinessPolicyState {
  /// Application cookie whose lifetime the ELB's cookie should follow.
  final pulumi.Input<String>? cookieName;
  /// Load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  final pulumi.Input<int>? lbPort;
  /// Name of load balancer to which the policy
  /// should be attached.
  final pulumi.Input<String>? loadBalancer;
  /// Name of the stickiness policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AppCookieStickinessPolicyState].
  /// [cookieName] Application cookie whose lifetime the ELB's cookie should follow.
  /// [lbPort] Load balancer port to which the policy
  /// [loadBalancer] Name of load balancer to which the policy
  /// [name] Name of the stickiness policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AppCookieStickinessPolicyState({
    this.cookieName,
    this.lbPort,
    this.loadBalancer,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieName': ?cookieName,
      'lbPort': ?lbPort,
      'loadBalancer': ?loadBalancer,
      'name': ?name,
      'region': ?region,
    };
  }

  factory AppCookieStickinessPolicyState.fromMap(Map<String, dynamic> map) {
    return AppCookieStickinessPolicyState(
      cookieName: (() { final guardedValue = map['cookieName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lbPort: (() { final guardedValue = map['lbPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

