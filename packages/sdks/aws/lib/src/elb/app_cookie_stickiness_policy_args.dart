// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elb_app_cookie_stickiness_policy_app_cookie_stickiness_policy_args_doc}
/// The set of arguments for AppCookieStickinessPolicy.
/// {@endtemplate}
/// {@macro pulumi_elb_app_cookie_stickiness_policy_app_cookie_stickiness_policy_args_doc}
class AppCookieStickinessPolicyArgs {
  /// Application cookie whose lifetime the ELB's cookie should follow.
  final pulumi.Input<String> cookieName;
  /// Load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  final pulumi.Input<int> lbPort;
  /// Name of load balancer to which the policy
  /// should be attached.
  final pulumi.Input<String> loadBalancer;
  /// Name of the stickiness policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AppCookieStickinessPolicyArgs].
  /// [cookieName] Application cookie whose lifetime the ELB's cookie should follow.
  /// [lbPort] Load balancer port to which the policy
  /// [loadBalancer] Name of load balancer to which the policy
  /// [name] Name of the stickiness policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AppCookieStickinessPolicyArgs({
    required this.cookieName,
    required this.lbPort,
    required this.loadBalancer,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieName': cookieName,
      'lbPort': lbPort,
      'loadBalancer': loadBalancer,
      'name': ?name,
      'region': ?region,
    };
  }

  factory AppCookieStickinessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AppCookieStickinessPolicyArgs(
      cookieName: pulumi.Input.fromValue(map['cookieName'] as String),
      lbPort: pulumi.Input.fromValue(map['lbPort'] as int),
      loadBalancer: pulumi.Input.fromValue(map['loadBalancer'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

