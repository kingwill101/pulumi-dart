// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverRuleAssociation resources.
class ResolverRuleAssociationState {
  /// A name for the association that you're creating between a resolver rule and a VPC.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the resolver rule that you want to associate with the VPC.
  final pulumi.Input<String>? resolverRuleId;
  /// The ID of the VPC that you want to associate the resolver rule with.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ResolverRuleAssociationState].
  /// [name] A name for the association that you're creating between a resolver rule and a VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverRuleId] The ID of the resolver rule that you want to associate with the VPC.
  /// [vpcId] The ID of the VPC that you want to associate the resolver rule with.
  ResolverRuleAssociationState({
    this.name,
    this.region,
    this.resolverRuleId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'resolverRuleId': ?resolverRuleId,
      'vpcId': ?vpcId,
    };
  }

  factory ResolverRuleAssociationState.fromMap(Map<String, dynamic> map) {
    return ResolverRuleAssociationState(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resolverRuleId: map['resolverRuleId'] == null ? null : ((map['resolverRuleId'] as String).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

