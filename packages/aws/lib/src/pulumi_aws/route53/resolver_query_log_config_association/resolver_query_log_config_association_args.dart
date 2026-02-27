// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResolverQueryLogConfigAssociation.
class ResolverQueryLogConfigAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the Route 53 Resolver query logging configuration that you want to associate a VPC with.
  final pulumi.Input<String> resolverQueryLogConfigId;

  /// The ID of a VPC that you want this query logging configuration to log queries for.
  final pulumi.Input<String> resourceId;

  ResolverQueryLogConfigAssociationArgs({
    this.region,
    required this.resolverQueryLogConfigId,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resolverQueryLogConfigId'] = resolverQueryLogConfigId;
    map['resourceId'] = resourceId;
    return map;
  }

  factory ResolverQueryLogConfigAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ResolverQueryLogConfigAssociationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resolverQueryLogConfigId:
          pulumi.Input.asInput<String>(map['resolverQueryLogConfigId']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
    );
  }
}
