// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_rule_config.dart';

/// Input properties used for looking up and filtering DefenseRule resources.
class DefenseRuleState {
  /// Rule configuration content, in JSON format, constructed with a series of parameters.
  ///
  /// &gt; **NOTE:**  Depending on the specified **protection rule type**(`DefenseScene`), the specific parameters vary. For more information, see **Protection Rule Parameter Description**.
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
  /// &gt; **NOTE:**  This parameter is required only when `DefenseType` is set to `resource`.
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
  const DefenseRuleState({
    this.config,
    this.defenseOrigin,
    this.defenseScene,
    this.defenseType,
    this.instanceId,
    this.resource,
    this.ruleId,
    this.ruleName,
    this.ruleStatus,
    this.templateId,
  });

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
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenseRuleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defenseOrigin: (() { final guardedValue = map['defenseOrigin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defenseScene: (() { final guardedValue = map['defenseScene']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defenseType: (() { final guardedValue = map['defenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleStatus: (() { final guardedValue = map['ruleStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

