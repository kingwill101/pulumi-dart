// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResolverRuleAssociation.
class ResolverRuleAssociationArgs {
  /// A name for the association that you're creating between a resolver rule and a VPC.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the resolver rule that you want to associate with the VPC.
  final Input<String> resolverRuleId;

  /// The ID of the VPC that you want to associate the resolver rule with.
  final Input<String> vpcId;

  ResolverRuleAssociationArgs({
    this.name,
    this.region,
    required this.resolverRuleId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resolverRuleId'] = resolverRuleId;
    map['vpcId'] = vpcId;
    return map;
  }

  factory ResolverRuleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ResolverRuleAssociationArgs(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      resolverRuleId: Input.asInput<String>(map['resolverRuleId']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
