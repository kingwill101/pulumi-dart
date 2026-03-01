// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_rule_config.dart';

/// Input properties used for looking up and filtering DefenseRule resources.
class DefenseRuleState {
  /// Rule configuration content, in JSON format, constructed with a series of parameters.
  ///
  /// > **NOTE:**  Depending on the specified **protection rule type**(`DefenseScene`), the specific parameters vary. For more information, see **Protection Rule Parameter Description**.
  /// See `config` below.
  final pulumi.Input<DefenseRuleConfig>? config;
  /// Sources of protection. Value:
  final pulumi.Input<String>? defenseOrigin;
  /// The WAF protection scenario to be created.
  ///
  /// When the protection rule type `DefenseType` is set to `template`, the value is as follows:
  final pulumi.Input<String>? defenseScene;
  /// The protection rule type. Value:
  final pulumi.Input<String>? defenseType;
  /// The ID of the Web Application Firewall (WAF) instance.
  final pulumi.Input<String>? instanceId;
  /// The protection object corresponding to the rule to be queried.
  ///
  /// > **NOTE:**  This parameter is required only when `DefenseType` is set to `resource`.
  final pulumi.Input<String>? resource;
  /// The protection rule ID.
  final pulumi.Input<int>? ruleId;
  /// The rule name.
  final pulumi.Input<String>? ruleName;
  /// Protection rule status.
  final pulumi.Input<int>? ruleStatus;
  /// The protection template ID of the protection rule to be created.
  final pulumi.Input<int>? templateId;

  /// Creates a new [DefenseRuleState].
  /// [config] Rule configuration content, in JSON format, constructed with a series of parameters.
  /// [defenseOrigin] Sources of protection. Value:
  /// [defenseScene] The WAF protection scenario to be created.
  /// [defenseType] The protection rule type. Value:
  /// [instanceId] The ID of the Web Application Firewall (WAF) instance.
  /// [resource] The protection object corresponding to the rule to be queried.
  /// [ruleId] The protection rule ID.
  /// [ruleName] The rule name.
  /// [ruleStatus] Protection rule status.
  /// [templateId] The protection template ID of the protection rule to be created.
  DefenseRuleState({
    pulumi.Output<DefenseRuleConfig>? config,
    pulumi.Output<String>? defenseOrigin,
    pulumi.Output<String>? defenseScene,
    pulumi.Output<String>? defenseType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? resource,
    pulumi.Output<int>? ruleId,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? ruleStatus,
    pulumi.Output<int>? templateId,
  }) :
      config = pulumi.Input.asOptionalInput<DefenseRuleConfig>(config),
      defenseOrigin = pulumi.Input.asOptionalInput<String>(defenseOrigin),
      defenseScene = pulumi.Input.asOptionalInput<String>(defenseScene),
      defenseType = pulumi.Input.asOptionalInput<String>(defenseType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      resource = pulumi.Input.asOptionalInput<String>(resource),
      ruleId = pulumi.Input.asOptionalInput<int>(ruleId),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      ruleStatus = pulumi.Input.asOptionalInput<int>(ruleStatus),
      templateId = pulumi.Input.asOptionalInput<int>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<DefenseRuleConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'defenseOrigin': ?defenseOrigin,
      'defenseScene': ?defenseScene,
      'defenseType': ?defenseType,
      'instanceId': ?instanceId,
      'resource': ?resource,
      'ruleId': ?ruleId,
      'ruleName': ?ruleName,
      'ruleStatus': ?ruleStatus,
      'templateId': ?templateId,
    };
  }

  factory DefenseRuleState.fromMap(Map<String, dynamic> map) {
    return DefenseRuleState(
      config: map['config'] == null ? null : pulumi.Output.create<DefenseRuleConfig>(DefenseRuleConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      defenseOrigin: map['defenseOrigin'] == null ? null : pulumi.Output.create<String>(map['defenseOrigin'] as String),
      defenseScene: map['defenseScene'] == null ? null : pulumi.Output.create<String>(map['defenseScene'] as String),
      defenseType: map['defenseType'] == null ? null : pulumi.Output.create<String>(map['defenseType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      resource: map['resource'] == null ? null : pulumi.Output.create<String>(map['resource'] as String),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<int>(map['ruleId'] as int),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      ruleStatus: map['ruleStatus'] == null ? null : pulumi.Output.create<int>(map['ruleStatus'] as int),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<int>(map['templateId'] as int),
    );
  }
}

