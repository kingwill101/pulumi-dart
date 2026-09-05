// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_encryption_configuration.dart';
import 'rule_group_rule_group.dart';

/// {@template pulumi_networkfirewall_rule_group_rule_group_args_doc}
/// The set of arguments for RuleGroup.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_rule_group_rule_group_args_doc}
class RuleGroupArgs {
  /// The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  final pulumi.Input<int> capacity;
  /// A friendly description of the rule group.
  final pulumi.Input<String?>? description;
  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  final pulumi.Input<RuleGroupEncryptionConfiguration?>? encryptionConfiguration;
  /// A friendly name of the rule group.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A configuration block that defines the rule group rules. Required unless `rules` is specified. See Rule Group below for details.
  final pulumi.Input<RuleGroupRuleGroup?>? ruleGroup;
  /// The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless `ruleGroup` is specified.
  final pulumi.Input<String?>? rules;
  /// A map of key:value pairs to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  final pulumi.Input<String> type;

  /// Creates a new [RuleGroupArgs].
  /// [capacity] The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  /// [description] A friendly description of the rule group.
  /// [encryptionConfiguration] KMS encryption configuration settings. See Encryption Configuration below for details.
  /// [name] A friendly name of the rule group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleGroup] A configuration block that defines the rule group rules. Required unless `rules` is specified. See Rule Group below for details.
  /// [rules] The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless `ruleGroup` is specified.
  /// [tags] A map of key:value pairs to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  const RuleGroupArgs({
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
    return <String, dynamic>{
      'capacity': capacity,
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<RuleGroupEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'ruleGroup': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleGroup, Map<String, dynamic>>(ruleGroup, (value) => value.toMap()),
      'rules': ?rules,
      'tags': ?tags,
      'type': type,
    };
  }

  factory RuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return RuleGroupArgs(
      capacity: pulumi.Input.fromValue((map['capacity'] as num).toInt()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroup: (() { final guardedValue = map['ruleGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
