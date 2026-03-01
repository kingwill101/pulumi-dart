// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LbHttpsRedirectionPolicy resources.
class LbHttpsRedirectionPolicyState {
  /// Whether to enable HTTP to HTTPS redirection. `true` to activate HTTP to HTTPS redirection or `false` to deactivate HTTP to HTTPS redirection.
  final pulumi.Input<bool>? enabled;
  /// Name of the load balancer to which you want to enable HTTP to HTTPS redirection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? lbName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LbHttpsRedirectionPolicyState].
  /// [enabled] Whether to enable HTTP to HTTPS redirection. `true` to activate HTTP to HTTPS redirection or `false` to deactivate HTTP to HTTPS redirection.
  /// [lbName] Name of the load balancer to which you want to enable HTTP to HTTPS redirection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LbHttpsRedirectionPolicyState({
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? lbName,
    pulumi.Output<String>? region,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      lbName = pulumi.Input.asOptionalInput<String>(lbName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'lbName': ?lbName,
      'region': ?region,
    };
  }

  factory LbHttpsRedirectionPolicyState.fromMap(Map<String, dynamic> map) {
    return LbHttpsRedirectionPolicyState(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      lbName: map['lbName'] == null ? null : pulumi.Output.create<String>(map['lbName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

