// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_resolver_query_log_config_association_resolver_query_log_config_association_args_doc}
/// The set of arguments for ResolverQueryLogConfigAssociation.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_query_log_config_association_resolver_query_log_config_association_args_doc}
class ResolverQueryLogConfigAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Route 53 Resolver query logging configuration that you want to associate a VPC with.
  final pulumi.Input<String> resolverQueryLogConfigId;
  /// The ID of a VPC that you want this query logging configuration to log queries for.
  final pulumi.Input<String> resourceId;

  /// Creates a new [ResolverQueryLogConfigAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverQueryLogConfigId] The ID of the Route 53 Resolver query logging configuration that you want to associate a VPC with.
  /// [resourceId] The ID of a VPC that you want this query logging configuration to log queries for.
  const ResolverQueryLogConfigAssociationArgs({
    this.region,
    required this.resolverQueryLogConfigId,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resolverQueryLogConfigId': resolverQueryLogConfigId,
      'resourceId': resourceId,
    };
  }

  factory ResolverQueryLogConfigAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ResolverQueryLogConfigAssociationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolverQueryLogConfigId: pulumi.Input.fromValue(map['resolverQueryLogConfigId'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

