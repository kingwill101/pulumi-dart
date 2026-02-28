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
  final pulumi.Input<
          List<
              BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>>?
      permittedPublicSecurityGroupRuleRanges;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BlockPublicAccessConfigurationArgs].
  /// [blockPublicSecurityGroupRules] Enable or disable EMR Block Public Access.
  /// [permittedPublicSecurityGroupRuleRanges] Configuration block for defining permitted public security group rule port ranges. Can be defined multiple times per resource. Only valid if `block_public_security_group_rules` is set to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BlockPublicAccessConfigurationArgs({
    required bool blockPublicSecurityGroupRules,
    List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>?
        permittedPublicSecurityGroupRuleRanges,
    String? region,
  })  : blockPublicSecurityGroupRules =
            pulumi.Input.asInput<bool>(blockPublicSecurityGroupRules),
        permittedPublicSecurityGroupRuleRanges = pulumi.Input.asOptionalInput<
                List<
                    BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>>(
            permittedPublicSecurityGroupRuleRanges),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockPublicSecurityGroupRules'] = blockPublicSecurityGroupRules;
    final permittedPublicSecurityGroupRuleRangesValue =
        permittedPublicSecurityGroupRuleRanges;
    if (permittedPublicSecurityGroupRuleRangesValue != null) {
      map['permittedPublicSecurityGroupRuleRanges'] = pulumi
          .Input.mapOptionalInputValue<
              List<
                  BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>,
              List<Map<String, dynamic>>>(
          permittedPublicSecurityGroupRuleRangesValue,
          (value) => pulumi.Input.encodeList<
              BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BlockPublicAccessConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BlockPublicAccessConfigurationArgs(
      blockPublicSecurityGroupRules:
          map['blockPublicSecurityGroupRules'] as bool,
      permittedPublicSecurityGroupRuleRanges: map[
                  'permittedPublicSecurityGroupRuleRanges'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>(
              map['permittedPublicSecurityGroupRuleRanges'],
              (value) =>
                  BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange
                      .fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
