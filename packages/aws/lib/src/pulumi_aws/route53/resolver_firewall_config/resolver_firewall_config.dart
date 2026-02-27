import 'package:pulumi/pulumi.dart';
import 'resolver_firewall_config_args.dart';

/// Provides a Route 53 Resolver DNS Firewall config resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Resolver DNS Firewall configs using the Route 53 Resolver DNS Firewall config ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverFirewallConfig:ResolverFirewallConfig example rdsc-be1866ecc1683e95
/// ```
class ResolverFirewallConfig extends CustomResource {
  /// Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall blocks queries that it is unable to evaluate properly. If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it is unable to properly evaluate them. Valid values: `ENABLED`, `DISABLED`.
  late final Output<String> firewallFailOpen;

  /// The AWS account ID of the owner of the VPC that this firewall configuration applies to.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the VPC that the configuration is for.
  late final Output<String> resourceId;

  ResolverFirewallConfig(
    String name, {
    ResolverFirewallConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallConfig:ResolverFirewallConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.firewallFailOpen = registerOutput<String>('firewallFailOpen');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
  }
}
