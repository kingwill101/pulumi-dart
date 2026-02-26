// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_encryption_configuration/rule_group_encryption_configuration.dart';
import '../rule_group_rule_group/rule_group_rule_group.dart';

/// The set of arguments for RuleGroup.
class RuleGroupArgs {
  /// The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  final Input<int> capacity;

  /// A friendly description of the rule group.
  final Input<String>? description;

  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  final Input<RuleGroupEncryptionConfiguration>? encryptionConfiguration;

  /// A friendly name of the rule group.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A configuration block that defines the rule group rules. Required unless <span pulumi-lang-nodejs="`rules`" pulumi-lang-dotnet="`Rules`" pulumi-lang-go="`rules`" pulumi-lang-python="`rules`" pulumi-lang-yaml="`rules`" pulumi-lang-java="`rules`">`rules`</span> is specified. See Rule Group below for details.
  final Input<RuleGroupRuleGroup>? ruleGroup;

  /// The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless <span pulumi-lang-nodejs="`ruleGroup`" pulumi-lang-dotnet="`RuleGroup`" pulumi-lang-go="`ruleGroup`" pulumi-lang-python="`rule_group`" pulumi-lang-yaml="`ruleGroup`" pulumi-lang-java="`ruleGroup`">`rule_group`</span> is specified.
  final Input<String>? rules;

  /// A map of key:value pairs to associate with the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  final Input<String> type;

  RuleGroupArgs({
    required this.capacity,
    this.description,
    this.encryptionConfiguration,
    this.name,
    this.region,
    this.ruleGroup,
    this.rules,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacity'] = capacity;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = Input.mapOptionalInputValue<
              RuleGroupEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final ruleGroupValue = ruleGroup;
    if (ruleGroupValue != null) {
      map['ruleGroup'] =
          Input.mapOptionalInputValue<RuleGroupRuleGroup, Map<String, dynamic>>(
              ruleGroupValue, (value) => value.toMap());
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = rulesValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory RuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return RuleGroupArgs(
      capacity: Input.asInput<int>(map['capacity']),
      description: Input.asOptionalInput<String>(map['description']),
      encryptionConfiguration:
          Input.asOptionalInput<RuleGroupEncryptionConfiguration>(
              map['encryptionConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleGroup: Input.asOptionalInput<RuleGroupRuleGroup>(map['ruleGroup']),
      rules: Input.asOptionalInput<String>(map['rules']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
