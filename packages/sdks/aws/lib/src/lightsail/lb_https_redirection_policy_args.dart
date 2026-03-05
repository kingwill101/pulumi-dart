// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_lb_https_redirection_policy_lb_https_redirection_policy_args_doc}
/// The set of arguments for LbHttpsRedirectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_lightsail_lb_https_redirection_policy_lb_https_redirection_policy_args_doc}
class LbHttpsRedirectionPolicyArgs {
  /// Whether to enable HTTP to HTTPS redirection. `true` to activate HTTP to HTTPS redirection or `false` to deactivate HTTP to HTTPS redirection.
  final pulumi.Input<bool> enabled;
  /// Name of the load balancer to which you want to enable HTTP to HTTPS redirection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> lbName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LbHttpsRedirectionPolicyArgs].
  /// [enabled] Whether to enable HTTP to HTTPS redirection. `true` to activate HTTP to HTTPS redirection or `false` to deactivate HTTP to HTTPS redirection.
  /// [lbName] Name of the load balancer to which you want to enable HTTP to HTTPS redirection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LbHttpsRedirectionPolicyArgs({
    required this.enabled,
    required this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'lbName': lbName,
      'region': ?region,
    };
  }

  factory LbHttpsRedirectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LbHttpsRedirectionPolicyArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      lbName: pulumi.Input.fromValue(map['lbName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

