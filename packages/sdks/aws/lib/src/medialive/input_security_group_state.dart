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
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [whitelistRules] Whitelist rules. See Whitelist Rules for more details.
  const InputSecurityGroupState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      whitelistRules: (() { final guardedValue = map['whitelistRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputSecurityGroupWhitelistRule>(guardedValue, (value) => InputSecurityGroupWhitelistRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
