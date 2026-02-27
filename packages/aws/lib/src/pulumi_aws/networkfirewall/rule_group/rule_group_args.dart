// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_encryption_configuration/rule_group_encryption_configuration.dart';
import '../rule_group_rule_group/rule_group_rule_group.dart';

/// The set of arguments for RuleGroup.
class RuleGroupArgs {
  /// The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  final pulumi.Input<int> capacity;

  /// A friendly description of the rule group.
  final pulumi.Input<String>? description;

  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  final pulumi.Input<RuleGroupEncryptionConfiguration>? encryptionConfiguration;

  /// A friendly name of the rule group.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A configuration block that defines the rule group rules. Required unless `rules` is specified. See Rule Group below for details.
  final pulumi.Input<RuleGroupRuleGroup>? ruleGroup;

  /// The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless `rule_group` is specified.
  final pulumi.Input<String>? rules;

  /// A map of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  final pulumi.Input<String> type;

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
      map['encryptionConfiguration'] = pulumi.Input.mapOptionalInputValue<
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
      map['ruleGroup'] = pulumi.Input.mapOptionalInputValue<RuleGroupRuleGroup,
          Map<String, dynamic>>(ruleGroupValue, (value) => value.toMap());
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
      capacity: pulumi.Input.asInput<int>(map['capacity']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      encryptionConfiguration:
          pulumi.Input.asOptionalInput<RuleGroupEncryptionConfiguration>(
              map['encryptionConfiguration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      ruleGroup:
          pulumi.Input.asOptionalInput<RuleGroupRuleGroup>(map['ruleGroup']),
      rules: pulumi.Input.asOptionalInput<String>(map['rules']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
