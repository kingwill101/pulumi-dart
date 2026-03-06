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
  const ResolverRuleAssociationState({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolverRuleId: (() { final guardedValue = map['resolverRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

