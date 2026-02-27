import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_rule_association_args.dart';

/// Provides a Route53 Resolver rule association.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the Route53 Resolver rule association.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Route53 Resolver rule associations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverRuleAssociation:ResolverRuleAssociation example rslvr-rrassoc-97242eaf88example
/// ```
class ResolverRuleAssociation extends pulumi.CustomResource {
  /// A name for the association that you're creating between a resolver rule and a VPC.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the resolver rule that you want to associate with the VPC.
  late final pulumi.Output<String> resolverRuleId;

  /// The ID of the VPC that you want to associate the resolver rule with.
  late final pulumi.Output<String> vpcId;

  ResolverRuleAssociation(
    String name, {
    ResolverRuleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverRuleAssociation:ResolverRuleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resolverRuleId = registerOutput<String>('resolverRuleId');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
