// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverQueryLogConfigAssociation resources.
class ResolverQueryLogConfigAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Route 53 Resolver query logging configuration that you want to associate a VPC with.
  final pulumi.Input<String>? resolverQueryLogConfigId;
  /// The ID of a VPC that you want this query logging configuration to log queries for.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ResolverQueryLogConfigAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverQueryLogConfigId] The ID of the Route 53 Resolver query logging configuration that you want to associate a VPC with.
  /// [resourceId] The ID of a VPC that you want this query logging configuration to log queries for.
  ResolverQueryLogConfigAssociationState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? resolverQueryLogConfigId,
    pulumi.Output<String>? resourceId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resolverQueryLogConfigId = pulumi.Input.asOptionalInput<String>(resolverQueryLogConfigId),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resolverQueryLogConfigId': ?resolverQueryLogConfigId,
      'resourceId': ?resourceId,
    };
  }

  factory ResolverQueryLogConfigAssociationState.fromMap(Map<String, dynamic> map) {
    return ResolverQueryLogConfigAssociationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resolverQueryLogConfigId: map['resolverQueryLogConfigId'] == null ? null : pulumi.Output.create<String>(map['resolverQueryLogConfigId'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
    );
  }
}

