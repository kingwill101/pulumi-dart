// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_security_group_whitelist_rule.dart';

/// {@template pulumi_medialive_input_security_group_input_security_group_args_doc}
/// The set of arguments for InputSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_medialive_input_security_group_input_security_group_args_doc}
class InputSecurityGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the InputSecurityGroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whitelist rules. See Whitelist Rules for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<InputSecurityGroupWhitelistRule>> whitelistRules;

  /// Creates a new [InputSecurityGroupArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the InputSecurityGroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [whitelistRules] Whitelist rules. See Whitelist Rules for more details.
  InputSecurityGroupArgs({
    String? region,
    Map<String, String>? tags,
    required List<InputSecurityGroupWhitelistRule> whitelistRules,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      whitelistRules = pulumi.Input.asInput<List<InputSecurityGroupWhitelistRule>>(whitelistRules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'whitelistRules': pulumi.Input.mapInputValue<List<InputSecurityGroupWhitelistRule>, List<Map<String, dynamic>>>(whitelistRules, (value) => pulumi.Input.encodeList<InputSecurityGroupWhitelistRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InputSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return InputSecurityGroupArgs(
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      whitelistRules: pulumi.Input.decodeList<InputSecurityGroupWhitelistRule>(map['whitelistRules'], (value) => InputSecurityGroupWhitelistRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

