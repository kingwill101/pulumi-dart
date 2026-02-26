// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LbHttpsRedirectionPolicy.
class LbHttpsRedirectionPolicyArgs {
  /// Whether to enable HTTP to HTTPS redirection. <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to activate HTTP to HTTPS redirection or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to deactivate HTTP to HTTPS redirection.
  final Input<bool> enabled;

  /// Name of the load balancer to which you want to enable HTTP to HTTPS redirection.
  ///
  /// The following arguments are optional:
  final Input<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LbHttpsRedirectionPolicyArgs({
    required this.enabled,
    required this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['lbName'] = lbName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LbHttpsRedirectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LbHttpsRedirectionPolicyArgs(
      enabled: Input.asInput<bool>(map['enabled']),
      lbName: Input.asInput<String>(map['lbName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
