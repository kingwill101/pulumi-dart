import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_config_args.dart';

/// Provides a Route 53 Resolver config resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Resolver configs using the Route 53 Resolver config ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverConfig:ResolverConfig example rslvr-rc-715aa20c73a23da7
/// ```
class ResolverConfig extends pulumi.CustomResource {
  /// Indicates whether or not the Resolver will create autodefined rules for reverse DNS lookups. Valid values: `ENABLE`, `DISABLE`.
  late final pulumi.Output<String> autodefinedReverseFlag;

  /// The AWS account ID of the owner of the VPC that this resolver configuration applies to.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the VPC that the configuration is for.
  late final pulumi.Output<String> resourceId;

  ResolverConfig(
    String name, {
    ResolverConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverConfig:ResolverConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autodefinedReverseFlag =
        registerOutput<String>('autodefinedReverseFlag');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
  }
}
