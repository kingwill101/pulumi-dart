// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_rule_config.dart';

/// {@template pulumi_wafv3_defense_rule_defense_rule_args_doc}
/// The set of arguments for DefenseRule.
/// {@endtemplate}
/// {@macro pulumi_wafv3_defense_rule_defense_rule_args_doc}
class DefenseRuleArgs {
  /// Rule configuration content, in JSON format, constructed with a series of parameters.
  ///
  /// > **NOTE:**  Depending on the specified **protection rule type**(`DefenseScene`), the specific parameters vary. For more information, see **Protection Rule Parameter Description**.
  /// See `config` below.
  final pulumi.Input<DefenseRuleConfig> config;
  /// Sources of protection. Value:
  final pulumi.Input<String>? defenseOrigin;
  /// The WAF protection scenario to be created.
  ///
  /// When the protection rule type `DefenseType` is set to `template`, the value is as follows:
  final pulumi.Input<String> defenseScene;
  /// The protection rule type. Value:
  final pulumi.Input<String> defenseType;
  /// The ID of the Web Application Firewall (WAF) instance.
  final pulumi.Input<String> instanceId;
  /// The protection object corresponding to the rule to be queried.
  ///
  /// > **NOTE:**  This parameter is required only when `DefenseType` is set to `resource`.
  final pulumi.Input<String>? resource;
  /// The rule name.
  final pulumi.Input<String>? ruleName;
  /// Protection rule status.
  final pulumi.Input<int>? ruleStatus;
  /// The protection template ID of the protection rule to be created.
  final pulumi.Input<int>? templateId;

  /// Creates a new [DefenseRuleArgs].
  /// [config] Rule configuration content, in JSON format, constructed with a series of parameters.
  /// [defenseOrigin] Sources of protection. Value:
  /// [defenseScene] The WAF protection scenario to be created.
  /// [defenseType] The protection rule type. Value:
  /// [instanceId] The ID of the Web Application Firewall (WAF) instance.
  /// [resource] The protection object corresponding to the rule to be queried.
  /// [ruleName] The rule name.
  /// [ruleStatus] Protection rule status.
  /// [templateId] The protection template ID of the protection rule to be created.
  DefenseRuleArgs({
    required this.config,
    this.defenseOrigin,
    required this.defenseScene,
    required this.defenseType,
    required this.instanceId,
    this.resource,
    this.ruleName,
    this.ruleStatus,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<DefenseRuleConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'defenseOrigin': ?defenseOrigin,
      'defenseScene': defenseScene,
      'defenseType': defenseType,
      'instanceId': instanceId,
      'resource': ?resource,
      'ruleName': ?ruleName,
      'ruleStatus': ?ruleStatus,
      'templateId': ?templateId,
    };
  }

  factory DefenseRuleArgs.fromMap(Map<String, dynamic> map) {
    return DefenseRuleArgs(
      config: (DefenseRuleConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      defenseOrigin: map['defenseOrigin'] == null ? null : (map['defenseOrigin']! as String).input(),
      defenseScene: (map['defenseScene'] as String).input(),
      defenseType: (map['defenseType'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      resource: map['resource'] == null ? null : (map['resource']! as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      ruleStatus: map['ruleStatus'] == null ? null : (map['ruleStatus']! as int).input(),
      templateId: map['templateId'] == null ? null : (map['templateId']! as int).input(),
    );
  }
}

