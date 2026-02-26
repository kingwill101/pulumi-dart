// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AppCookieStickinessPolicy.
class AppCookieStickinessPolicyArgs {
  /// Application cookie whose lifetime the ELB's cookie should follow.
  final Input<String> cookieName;

  /// Load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  final Input<int> lbPort;

  /// Name of load balancer to which the policy
  /// should be attached.
  final Input<String> loadBalancer;

  /// Name of the stickiness policy.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  AppCookieStickinessPolicyArgs({
    required this.cookieName,
    required this.lbPort,
    required this.loadBalancer,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookieName'] = cookieName;
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

  factory AppCookieStickinessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AppCookieStickinessPolicyArgs(
      cookieName: Input.asInput<String>(map['cookieName']),
      lbPort: Input.asInput<int>(map['lbPort']),
      loadBalancer: Input.asInput<String>(map['loadBalancer']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
