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

  /// Creates a new [RuleGroupArgs].
  /// [capacity] The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  /// [description] A friendly description of the rule group.
  /// [encryptionConfiguration] KMS encryption configuration settings. See Encryption Configuration below for details.
  /// [name] A friendly name of the rule group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleGroup] A configuration block that defines the rule group rules. Required unless `rules` is specified. See Rule Group below for details.
  /// [rules] The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless `rule_group` is specified.
  /// [tags] A map of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  RuleGroupArgs({
    required int capacity,
    String? description,
    RuleGroupEncryptionConfiguration? encryptionConfiguration,
    String? name,
    String? region,
    RuleGroupRuleGroup? ruleGroup,
    String? rules,
    Map<String, String>? tags,
    required String type,
  }) :
      capacity = pulumi.Input.asInput<int>(capacity),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionConfiguration = pulumi.Input.asOptionalInput<RuleGroupEncryptionConfiguration>(encryptionConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleGroup = pulumi.Input.asOptionalInput<RuleGroupRuleGroup>(ruleGroup),
      rules = pulumi.Input.asOptionalInput<String>(rules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type);

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
      capacity: map['capacity'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : RuleGroupEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      ruleGroup: map['ruleGroup'] == null ? null : RuleGroupRuleGroup.fromMap((map['ruleGroup'] as Map).cast<String, dynamic>()),
      rules: map['rules'] == null ? null : map['rules'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

