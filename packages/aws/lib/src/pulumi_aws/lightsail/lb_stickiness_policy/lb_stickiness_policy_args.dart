// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LbStickinessPolicy.
class LbStickinessPolicyArgs {
  /// Cookie duration in seconds. This determines the length of the session stickiness.
  final Input<int> cookieDuration;

  /// Whether to enable session stickiness for the load balancer.
  final Input<bool> enabled;

  /// Name of the load balancer to which you want to enable session stickiness.
  ///
  /// The following arguments are optional:
  final Input<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LbStickinessPolicyArgs({
    required this.cookieDuration,
    required this.enabled,
    required this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookieDuration'] = cookieDuration;
    map['enabled'] = enabled;
    map['lbName'] = lbName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LbStickinessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LbStickinessPolicyArgs(
      cookieDuration: Input.asInput<int>(map['cookieDuration']),
      enabled: Input.asInput<bool>(map['enabled']),
      lbName: Input.asInput<String>(map['lbName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
