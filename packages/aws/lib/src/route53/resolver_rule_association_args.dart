// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_resolver_rule_association_resolver_rule_association_args_doc}
/// The set of arguments for ResolverRuleAssociation.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_rule_association_resolver_rule_association_args_doc}
class ResolverRuleAssociationArgs {
  /// A name for the association that you're creating between a resolver rule and a VPC.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the resolver rule that you want to associate with the VPC.
  final pulumi.Input<String> resolverRuleId;
  /// The ID of the VPC that you want to associate the resolver rule with.
  final pulumi.Input<String> vpcId;

  /// Creates a new [ResolverRuleAssociationArgs].
  /// [name] A name for the association that you're creating between a resolver rule and a VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverRuleId] The ID of the resolver rule that you want to associate with the VPC.
  /// [vpcId] The ID of the VPC that you want to associate the resolver rule with.
  ResolverRuleAssociationArgs({
    String? name,
    String? region,
    required String resolverRuleId,
    required String vpcId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resolverRuleId = pulumi.Input.asInput<String>(resolverRuleId),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'resolverRuleId': resolverRuleId,
      'vpcId': vpcId,
    };
  }

  factory ResolverRuleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ResolverRuleAssociationArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resolverRuleId: map['resolverRuleId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

