// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../block_public_access_configuration_permitted_public_security_group_rule_range/block_public_access_configuration_permitted_public_security_group_rule_range.dart';

/// The set of arguments for BlockPublicAccessConfiguration.
class BlockPublicAccessConfigurationArgs {
  /// Enable or disable EMR Block Public Access.
  ///
  /// The following arguments are optional:
  final Input<bool> blockPublicSecurityGroupRules;

  /// Configuration block for defining permitted public security group rule port ranges. Can be defined multiple times per resource. Only valid if `block_public_security_group_rules` is set to `true`.
  final Input<
          List<
              BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>>?
      permittedPublicSecurityGroupRuleRanges;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BlockPublicAccessConfigurationArgs({
    required this.blockPublicSecurityGroupRules,
    this.permittedPublicSecurityGroupRuleRanges,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockPublicSecurityGroupRules'] = blockPublicSecurityGroupRules;
    final permittedPublicSecurityGroupRuleRangesValue =
        permittedPublicSecurityGroupRuleRanges;
    if (permittedPublicSecurityGroupRuleRangesValue != null) {
      map['permittedPublicSecurityGroupRuleRanges'] = Input.mapOptionalInputValue<
              List<
                  BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>,
              List<Map<String, dynamic>>>(
          permittedPublicSecurityGroupRuleRangesValue,
          (value) => Input.encodeList<
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
          Input.asInput<bool>(map['blockPublicSecurityGroupRules']),
      permittedPublicSecurityGroupRuleRanges: Input.asOptionalInput<
              List<
                  BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>>(
          map['permittedPublicSecurityGroupRuleRanges']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
