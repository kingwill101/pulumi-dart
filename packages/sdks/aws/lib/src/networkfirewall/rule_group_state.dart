// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_encryption_configuration.dart';
import 'rule_group_rule_group.dart';

/// Input properties used for looking up and filtering RuleGroup resources.
class RuleGroupState {
  /// The Amazon Resource Name (ARN) that identifies the rule group.
  final pulumi.Input<String>? arn;
  /// The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  final pulumi.Input<int>? capacity;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  final pulumi.Input<String>? type;
  /// A string token used when updating the rule group.
  final pulumi.Input<String>? updateToken;

  /// Creates a new [RuleGroupState].
  /// [arn] The Amazon Resource Name (ARN) that identifies the rule group.
  /// [capacity] The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  /// [description] A friendly description of the rule group.
  /// [encryptionConfiguration] KMS encryption configuration settings. See Encryption Configuration below for details.
  /// [name] A friendly name of the rule group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleGroup] A configuration block that defines the rule group rules. Required unless `rules` is specified. See Rule Group below for details.
  /// [rules] The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless `rule_group` is specified.
  /// [tags] A map of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  /// [updateToken] A string token used when updating the rule group.
  RuleGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? capacity,
    pulumi.Output<String>? description,
    pulumi.Output<RuleGroupEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<RuleGroupRuleGroup>? ruleGroup,
    pulumi.Output<String>? rules,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateToken,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      capacity = pulumi.Input.asOptionalInput<int>(capacity),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionConfiguration = pulumi.Input.asOptionalInput<RuleGroupEncryptionConfiguration>(encryptionConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleGroup = pulumi.Input.asOptionalInput<RuleGroupRuleGroup>(ruleGroup),
      rules = pulumi.Input.asOptionalInput<String>(rules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateToken = pulumi.Input.asOptionalInput<String>(updateToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacity': ?capacity,
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<RuleGroupEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'ruleGroup': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleGroup, Map<String, dynamic>>(ruleGroup, (value) => value.toMap()),
      'rules': ?rules,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'updateToken': ?updateToken,
    };
  }

  factory RuleGroupState.fromMap(Map<String, dynamic> map) {
    return RuleGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<int>(map['capacity'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<RuleGroupEncryptionConfiguration>(RuleGroupEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleGroup: map['ruleGroup'] == null ? null : pulumi.Output.create<RuleGroupRuleGroup>(RuleGroupRuleGroup.fromMap((map['ruleGroup'] as Map).cast<String, dynamic>())),
      rules: map['rules'] == null ? null : pulumi.Output.create<String>(map['rules'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateToken: map['updateToken'] == null ? null : pulumi.Output.create<String>(map['updateToken'] as String),
    );
  }
}

