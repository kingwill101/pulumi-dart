// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverQueryLogConfigAssociation resources.
class ResolverQueryLogConfigAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the Route 53 Resolver query logging configuration that you want to associate a VPC with.
  final pulumi.Input<String?>? resolverQueryLogConfigId;
  /// The ID of a VPC that you want this query logging configuration to log queries for.
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [ResolverQueryLogConfigAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverQueryLogConfigId] The ID of the Route 53 Resolver query logging configuration that you want to associate a VPC with.
  /// [resourceId] The ID of a VPC that you want this query logging configuration to log queries for.
  const ResolverQueryLogConfigAssociationState({
    this.region,
    this.resolverQueryLogConfigId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resolverQueryLogConfigId': ?resolverQueryLogConfigId,
      'resourceId': ?resourceId,
    };
  }

  factory ResolverQueryLogConfigAssociationState.fromMap(Map<String, dynamic> map) {
    return ResolverQueryLogConfigAssociationState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolverQueryLogConfigId: (() { final guardedValue = map['resolverQueryLogConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
