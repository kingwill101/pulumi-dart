// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_security_group_whitelist_rule.dart';

/// Input properties used for looking up and filtering InputSecurityGroup resources.
class InputSecurityGroupState {
  /// ARN of the InputSecurityGroup.
  final pulumi.Input<String>? arn;
  /// The list of inputs currently using this InputSecurityGroup.
  final pulumi.Input<List<String>>? inputs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the InputSecurityGroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Whitelist rules. See Whitelist Rules for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<InputSecurityGroupWhitelistRule>>? whitelistRules;

  /// Creates a new [InputSecurityGroupState].
  /// [arn] ARN of the InputSecurityGroup.
  /// [inputs] The list of inputs currently using this InputSecurityGroup.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the InputSecurityGroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [whitelistRules] Whitelist rules. See Whitelist Rules for more details.
  InputSecurityGroupState({
    this.arn,
    this.inputs,
    this.region,
    this.tags,
    this.tagsAll,
    this.whitelistRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'inputs': ?inputs,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'whitelistRules': ?pulumi.Input.mapOptionalInputValue<List<InputSecurityGroupWhitelistRule>, List<Map<String, dynamic>>>(whitelistRules, (value) => pulumi.Input.encodeList<InputSecurityGroupWhitelistRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InputSecurityGroupState.fromMap(Map<String, dynamic> map) {
    return InputSecurityGroupState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      inputs: map['inputs'] == null ? null : (((map['inputs'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      whitelistRules: map['whitelistRules'] == null ? null : ((pulumi.Input.decodeList<InputSecurityGroupWhitelistRule>(map['whitelistRules']!, (value) => InputSecurityGroupWhitelistRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

