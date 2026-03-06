// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'block_public_access_configuration_permitted_public_security_group_rule_range.dart';

/// Input properties used for looking up and filtering BlockPublicAccessConfiguration resources.
class BlockPublicAccessConfigurationState {
  /// Enable or disable EMR Block Public Access.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool>? blockPublicSecurityGroupRules;
  /// Configuration block for defining permitted public security group rule port ranges. Can be defined multiple times per resource. Only valid if `block_public_security_group_rules` is set to `true`.
  final pulumi.Input<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>>? permittedPublicSecurityGroupRuleRanges;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BlockPublicAccessConfigurationState].
  /// [blockPublicSecurityGroupRules] Enable or disable EMR Block Public Access.
  /// [permittedPublicSecurityGroupRuleRanges] Configuration block for defining permitted public security group rule port ranges. Can be defined multiple times per resource. Only valid if `block_public_security_group_rules` is set to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const BlockPublicAccessConfigurationState({
    this.blockPublicSecurityGroupRules,
    this.permittedPublicSecurityGroupRuleRanges,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicSecurityGroupRules': ?blockPublicSecurityGroupRules,
      'permittedPublicSecurityGroupRuleRanges': ?pulumi.Input.mapOptionalInputValue<List<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>, List<Map<String, dynamic>>>(permittedPublicSecurityGroupRuleRanges, (value) => pulumi.Input.encodeList<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory BlockPublicAccessConfigurationState.fromMap(Map<String, dynamic> map) {
    return BlockPublicAccessConfigurationState(
      blockPublicSecurityGroupRules: (() { final guardedValue = map['blockPublicSecurityGroupRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      permittedPublicSecurityGroupRuleRanges: (() { final guardedValue = map['permittedPublicSecurityGroupRuleRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange>(guardedValue, (value) => BlockPublicAccessConfigurationPermittedPublicSecurityGroupRuleRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

