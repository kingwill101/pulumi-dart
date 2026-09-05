// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_resolver_firewall_config_resolver_firewall_config_args_doc}
/// The set of arguments for ResolverFirewallConfig.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_firewall_config_resolver_firewall_config_args_doc}
class ResolverFirewallConfigArgs {
  /// Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall blocks queries that it is unable to evaluate properly. If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it is unable to properly evaluate them. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? firewallFailOpen;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the VPC that the configuration is for.
  final pulumi.Input<String> resourceId;

  /// Creates a new [ResolverFirewallConfigArgs].
  /// [firewallFailOpen] Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall blocks queries that it is unable to evaluate properly. If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it is unable to properly evaluate them. Valid values: `ENABLED`, `DISABLED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the VPC that the configuration is for.
  const ResolverFirewallConfigArgs({
    this.firewallFailOpen,
    this.region,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallFailOpen': ?firewallFailOpen,
      'region': ?region,
      'resourceId': resourceId,
    };
  }

  factory ResolverFirewallConfigArgs.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallConfigArgs(
      firewallFailOpen: (() { final guardedValue = map['firewallFailOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
