// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'block_public_access_configuration_permitted_public_security_group_rule_range.dart';

/// {@template pulumi_emr_block_public_access_configuration_block_public_access_configuration_args_doc}
/// The set of arguments for BlockPublicAccessConfiguration.
/// {@endtemplate}
/// {@macro pulumi_emr_block_public_access_configuration_block_public_access_configuration_args_doc}
class BlockPublicAccessConfigurationArgs {
  /// Enable or disable EMR Block Public Access.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool> blockPublicSecurityGroupRules;
  /// Configuration block for defining permitted public security group rule port ranges. Can be defined multiple times per resource. Only valid if `block_public_security_group_rules` is set to `true`.
  final pulumi.Input<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>>? permittedPublicSecurityGroupRuleRanges;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BlockPublicAccessConfigurationArgs].
  /// [blockPublicSecurityGroupRules] Enable or disable EMR Block Public Access.
  /// [permittedPublicSecurityGroupRuleRanges] Configuration block for defining permitted public security group rule port ranges. Can be defined multiple times per resource. Only valid if `block_public_security_group_rules` is set to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BlockPublicAccessConfigurationArgs({
    required pulumi.Output<bool> blockPublicSecurityGroupRules,
    pulumi.Output<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>>? permittedPublicSecurityGroupRuleRanges,
    pulumi.Output<String>? region,
  }) :
      blockPublicSecurityGroupRules = pulumi.Input.asInput<bool>(blockPublicSecurityGroupRules),
      permittedPublicSecurityGroupRuleRanges = pulumi.Input.asOptionalInput<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>>(permittedPublicSecurityGroupRuleRanges),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicSecurityGroupRules': blockPublicSecurityGroupRules,
      'permittedPublicSecurityGroupRuleRanges': ?pulumi.Input.mapOptionalInputValue<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>, List<Map<String, dynamic>>>(permittedPublicSecurityGroupRuleRanges, (value) => pulumi.Input.encodeList<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory BlockPublicAccessConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BlockPublicAccessConfigurationArgs(
      blockPublicSecurityGroupRules: pulumi.Output.create<bool>(map['blockPublicSecurityGroupRules'] as bool),
      permittedPublicSecurityGroupRuleRanges: map['permittedPublicSecurityGroupRuleRanges'] == null ? null : pulumi.Output.create<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>>(pulumi.Input.decodeList<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>(map['permittedPublicSecurityGroupRuleRanges'], (value) => BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

