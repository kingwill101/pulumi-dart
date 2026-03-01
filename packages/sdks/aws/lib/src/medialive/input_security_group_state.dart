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
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? inputs,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<InputSecurityGroupWhitelistRule>>? whitelistRules,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      inputs = pulumi.Input.asOptionalInput<List<String>>(inputs),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      whitelistRules = pulumi.Input.asOptionalInput<List<InputSecurityGroupWhitelistRule>>(whitelistRules);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      inputs: map['inputs'] == null ? null : pulumi.Output.create<List<String>>((map['inputs'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      whitelistRules: map['whitelistRules'] == null ? null : pulumi.Output.create<List<InputSecurityGroupWhitelistRule>>(pulumi.Input.decodeList<InputSecurityGroupWhitelistRule>(map['whitelistRules'], (value) => InputSecurityGroupWhitelistRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

