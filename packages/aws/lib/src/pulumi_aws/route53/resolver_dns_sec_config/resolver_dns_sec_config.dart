import 'package:pulumi/pulumi.dart';
import 'resolver_dns_sec_config_args.dart';

/// Provides a Route 53 Resolver DNSSEC config resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver DNSSEC configs using the Route 53 Resolver DNSSEC config ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverDnsSecConfig:ResolverDnsSecConfig example rdsc-be1866ecc1683e95
/// ```
class ResolverDnsSecConfig extends CustomResource {
  /// The ARN for a configuration for DNSSEC validation.
  late final Output<String> arn;

  /// The owner account ID of the virtual private cloud (VPC) for a configuration for DNSSEC validation.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.
  late final Output<String> resourceId;

  /// The validation status for a DNSSEC configuration. The status can be one of the following: `ENABLING`, `ENABLED`, `DISABLING` and `DISABLED`.
  late final Output<String> validationStatus;

  ResolverDnsSecConfig(
    String name, {
    ResolverDnsSecConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverDnsSecConfig:ResolverDnsSecConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.validationStatus = registerOutput<String>('validationStatus');
  }
}
