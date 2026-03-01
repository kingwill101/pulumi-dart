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
    required pulumi.Output<DefenseRuleConfig> config,
    pulumi.Output<String>? defenseOrigin,
    required pulumi.Output<String> defenseScene,
    required pulumi.Output<String> defenseType,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? resource,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? ruleStatus,
    pulumi.Output<int>? templateId,
  }) :
      config = pulumi.Input.asInput<DefenseRuleConfig>(config),
      defenseOrigin = pulumi.Input.asOptionalInput<String>(defenseOrigin),
      defenseScene = pulumi.Input.asInput<String>(defenseScene),
      defenseType = pulumi.Input.asInput<String>(defenseType),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      resource = pulumi.Input.asOptionalInput<String>(resource),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      ruleStatus = pulumi.Input.asOptionalInput<int>(ruleStatus),
      templateId = pulumi.Input.asOptionalInput<int>(templateId);

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
      config: pulumi.Output.create<DefenseRuleConfig>(DefenseRuleConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      defenseOrigin: map['defenseOrigin'] == null ? null : pulumi.Output.create<String>(map['defenseOrigin'] as String),
      defenseScene: pulumi.Output.create<String>(map['defenseScene'] as String),
      defenseType: pulumi.Output.create<String>(map['defenseType'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      resource: map['resource'] == null ? null : pulumi.Output.create<String>(map['resource'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      ruleStatus: map['ruleStatus'] == null ? null : pulumi.Output.create<int>(map['ruleStatus'] as int),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<int>(map['templateId'] as int),
    );
  }
}

