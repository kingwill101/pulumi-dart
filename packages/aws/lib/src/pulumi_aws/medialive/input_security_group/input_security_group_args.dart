// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../input_security_group_whitelist_rule/input_security_group_whitelist_rule.dart';

/// The set of arguments for InputSecurityGroup.
class InputSecurityGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the InputSecurityGroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Whitelist rules. See Whitelist Rules for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<InputSecurityGroupWhitelistRule>> whitelistRules;

  InputSecurityGroupArgs({
    this.region,
    this.tags,
    required this.whitelistRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['whitelistRules'] = pulumi.Input.mapInputValue<
            List<InputSecurityGroupWhitelistRule>, List<Map<String, dynamic>>>(
        whitelistRules,
        (value) => pulumi.Input.encodeList<InputSecurityGroupWhitelistRule,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory InputSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return InputSecurityGroupArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      whitelistRules:
          pulumi.Input.asInput<List<InputSecurityGroupWhitelistRule>>(
              map['whitelistRules']),
    );
  }
}
