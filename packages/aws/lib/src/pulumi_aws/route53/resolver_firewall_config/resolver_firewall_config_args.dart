// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResolverFirewallConfig.
class ResolverFirewallConfigArgs {
  /// Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall blocks queries that it is unable to evaluate properly. If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it is unable to properly evaluate them. Valid values: `ENABLED`, `DISABLED`.
  final Input<String>? firewallFailOpen;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the VPC that the configuration is for.
  final Input<String> resourceId;

  ResolverFirewallConfigArgs({
    this.firewallFailOpen,
    this.region,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final firewallFailOpenValue = firewallFailOpen;
    if (firewallFailOpenValue != null) {
      map['firewallFailOpen'] = firewallFailOpenValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    return map;
  }

  factory ResolverFirewallConfigArgs.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallConfigArgs(
      firewallFailOpen: Input.asOptionalInput<String>(map['firewallFailOpen']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceId: Input.asInput<String>(map['resourceId']),
    );
  }
}
