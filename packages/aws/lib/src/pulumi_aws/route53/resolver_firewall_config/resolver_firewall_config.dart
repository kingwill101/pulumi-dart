import 'package:pulumi/pulumi.dart' as pulumi;
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
class ResolverFirewallConfig extends pulumi.CustomResource {
  /// Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall blocks queries that it is unable to evaluate properly. If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it is unable to properly evaluate them. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> firewallFailOpen;

  /// The AWS account ID of the owner of the VPC that this firewall configuration applies to.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the VPC that the configuration is for.
  late final pulumi.Output<String> resourceId;

  ResolverFirewallConfig(
    String name, {
    ResolverFirewallConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverFirewallConfig:ResolverFirewallConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.firewallFailOpen = registerOutput<String>('firewallFailOpen');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
  }
}
