import 'package:pulumi/pulumi.dart';
import 'resolver_query_log_config_association_args.dart';

/// Provides a Route 53 Resolver query logging configuration association resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver query logging configuration associations using the Route 53 Resolver query logging configuration association ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverQueryLogConfigAssociation:ResolverQueryLogConfigAssociation example rqlca-b320624fef3c4d70
/// ```
class ResolverQueryLogConfigAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the Route 53 Resolver query logging configuration that you want to associate a VPC with.
  late final Output<String> resolverQueryLogConfigId;

  /// The ID of a VPC that you want this query logging configuration to log queries for.
  late final Output<String> resourceId;

  ResolverQueryLogConfigAssociation(
    String name, {
    ResolverQueryLogConfigAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverQueryLogConfigAssociation:ResolverQueryLogConfigAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resolverQueryLogConfigId =
        registerOutput<String>('resolverQueryLogConfigId');
    this.resourceId = registerOutput<String>('resourceId');
  }
}
