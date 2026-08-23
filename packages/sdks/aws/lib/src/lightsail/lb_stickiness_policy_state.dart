// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LbStickinessPolicy resources.
class LbStickinessPolicyState {
  /// Cookie duration in seconds. This determines the length of the session stickiness.
  final pulumi.Input<int>? cookieDuration;
  /// Whether to enable session stickiness for the load balancer.
  final pulumi.Input<bool>? enabled;
  /// Name of the load balancer to which you want to enable session stickiness.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? lbName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LbStickinessPolicyState].
  /// [cookieDuration] Cookie duration in seconds. This determines the length of the session stickiness.
  /// [enabled] Whether to enable session stickiness for the load balancer.
  /// [lbName] Name of the load balancer to which you want to enable session stickiness.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const LbStickinessPolicyState({
    this.cookieDuration,
    this.enabled,
    this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieDuration': ?cookieDuration,
      'enabled': ?enabled,
      'lbName': ?lbName,
      'region': ?region,
    };
  }

  factory LbStickinessPolicyState.fromMap(Map<String, dynamic> map) {
    return LbStickinessPolicyState(
      cookieDuration: (() { final guardedValue = map['cookieDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lbName: (() { final guardedValue = map['lbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
