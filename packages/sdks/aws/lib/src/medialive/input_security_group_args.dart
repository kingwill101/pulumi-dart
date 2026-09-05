// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_security_group_whitelist_rule.dart';

/// {@template pulumi_medialive_input_security_group_input_security_group_args_doc}
/// The set of arguments for InputSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_medialive_input_security_group_input_security_group_args_doc}
class InputSecurityGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Whitelist rules. See Whitelist Rules for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<InputSecurityGroupWhitelistRule>> whitelistRules;

  /// Creates a new [InputSecurityGroupArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [whitelistRules] Whitelist rules. See Whitelist Rules for more details.
  const InputSecurityGroupArgs({
    this.region,
    this.tags,
    required this.whitelistRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'whitelistRules': pulumi.Input.mapInputValue<List<InputSecurityGroupWhitelistRule>, List<Map<String, dynamic>>>(whitelistRules, (value) => pulumi.Input.encodeList<InputSecurityGroupWhitelistRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InputSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return InputSecurityGroupArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      whitelistRules: pulumi.Input.fromValue(pulumi.Input.decodeList<InputSecurityGroupWhitelistRule>(map['whitelistRules']!, (value) => InputSecurityGroupWhitelistRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
