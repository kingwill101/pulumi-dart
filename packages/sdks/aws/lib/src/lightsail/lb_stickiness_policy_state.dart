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
  LbStickinessPolicyState({
    pulumi.Output<int>? cookieDuration,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? lbName,
    pulumi.Output<String>? region,
  }) :
      cookieDuration = pulumi.Input.asOptionalInput<int>(cookieDuration),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      lbName = pulumi.Input.asOptionalInput<String>(lbName),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      cookieDuration: map['cookieDuration'] == null ? null : pulumi.Output.create<int>(map['cookieDuration'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      lbName: map['lbName'] == null ? null : pulumi.Output.create<String>(map['lbName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

