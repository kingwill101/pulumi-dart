// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_resolver_firewall_config_get_resolver_firewall_config_args_doc}
/// Arguments for getResolverFirewallConfig.
/// {@endtemplate}
/// {@macro pulumi_route53_get_resolver_firewall_config_get_resolver_firewall_config_args_doc}
class GetResolverFirewallConfigArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC from Amazon VPC that the configuration is for.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetResolverFirewallConfigArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the VPC from Amazon VPC that the configuration is for.
  const GetResolverFirewallConfigArgs({
    this.region,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceId': resourceId,
    };
  }

  factory GetResolverFirewallConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallConfigArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

