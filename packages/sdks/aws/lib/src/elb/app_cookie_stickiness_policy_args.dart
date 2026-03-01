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
    required pulumi.Output<String> cookieName,
    required pulumi.Output<int> lbPort,
    required pulumi.Output<String> loadBalancer,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      cookieName = pulumi.Input.asInput<String>(cookieName),
      lbPort = pulumi.Input.asInput<int>(lbPort),
      loadBalancer = pulumi.Input.asInput<String>(loadBalancer),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      cookieName: pulumi.Output.create<String>(map['cookieName'] as String),
      lbPort: pulumi.Output.create<int>(map['lbPort'] as int),
      loadBalancer: pulumi.Output.create<String>(map['loadBalancer'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

