// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_actions.dart';
import 'waf_rule_config_app_package.dart';
import 'waf_rule_config_app_sdk.dart';
import 'waf_rule_config_managed_ruleset.dart';
import 'waf_rule_config_rate_limit.dart';
import 'waf_rule_config_security_level.dart';
import 'waf_rule_config_timer.dart';

class WafRuleConfig {
  /// The action performed on requests that match the managed rule.
  final pulumi.Input<String>? action;
  /// Extended action configurations, including custom responses and bypass settings. See `actions` below.
  final pulumi.Input<WafRuleConfigActions>? actions;
  /// Security mechanism to prevent apps from being repackaged. See `app_package` below.
  final pulumi.Input<WafRuleConfigAppPackage>? appPackage;
  /// Mobile app SDK-related configurations. See `app_sdk` below.
  final pulumi.Input<WafRuleConfigAppSdk>? appSdk;
  /// The match expression used to evaluate incoming requests.
  final pulumi.Input<String>? expression;
  /// The ID of the custom error page, which can be obtained by calling the ListPages operation.
  final pulumi.Input<int>? id;
  /// The ID of the managed rule group (deprecated).
  final pulumi.Input<int>? managedGroupId;
  /// The name of the managed list applied to this rule.
  final pulumi.Input<String>? managedList;
  /// The managed rulesets referenced by this rule and their configurations. See `managed_rulesets` below.
  final pulumi.Input<List<WafRuleConfigManagedRuleset>>? managedRulesets;
  /// The package name of an authorized application.
  final pulumi.Input<String>? name;
  /// Additional notes about this rule.
  final pulumi.Input<String>? notes;
  /// Configuration of the rate limiting rule. See `rate_limit` below.
  final pulumi.Input<WafRuleConfigRateLimit>? rateLimit;
  /// The overall security protection level of WAF.
  /// Valid values:
  /// - off
  /// - essentially_off
  /// - low
  /// - medium
  /// - high
  /// - under_attack See `security_level` below.
  final pulumi.Input<WafRuleConfigSecurityLevel>? securityLevel;
  /// Configuration items for token verification mechanisms.
  final pulumi.Input<List<String>>? sigchls;
  /// The status of the managed rule: whether it is enabled or disabled.
  final pulumi.Input<String>? status;
  /// Configuration for the time schedule when the rule takes effect. See `timer` below.
  final pulumi.Input<WafRuleConfigTimer>? timer;
  /// The type category of the WAF rule.
  final pulumi.Input<String>? type;
  /// The value of the custom signature field used for validation.
  final pulumi.Input<String>? value;

  /// Creates a new [WafRuleConfig].
  /// [action] The action performed on requests that match the managed rule.
  /// [actions] Extended action configurations, including custom responses and bypass settings. See `actions` below.
  /// [appPackage] Security mechanism to prevent apps from being repackaged. See `app_package` below.
  /// [appSdk] Mobile app SDK-related configurations. See `app_sdk` below.
  /// [expression] The match expression used to evaluate incoming requests.
  /// [id] The ID of the custom error page, which can be obtained by calling the ListPages operation.
  /// [managedGroupId] The ID of the managed rule group (deprecated).
  /// [managedList] The name of the managed list applied to this rule.
  /// [managedRulesets] The managed rulesets referenced by this rule and their configurations. See `managed_rulesets` below.
  /// [name] The package name of an authorized application.
  /// [notes] Additional notes about this rule.
  /// [rateLimit] Configuration of the rate limiting rule. See `rate_limit` below.
  /// [securityLevel] The overall security protection level of WAF.
  /// [sigchls] Configuration items for token verification mechanisms.
  /// [status] The status of the managed rule: whether it is enabled or disabled.
  /// [timer] Configuration for the time schedule when the rule takes effect. See `timer` below.
  /// [type] The type category of the WAF rule.
  /// [value] The value of the custom signature field used for validation.
  WafRuleConfig({
    this.action,
    this.actions,
    this.appPackage,
    this.appSdk,
    this.expression,
    this.id,
    this.managedGroupId,
    this.managedList,
    this.managedRulesets,
    this.name,
    this.notes,
    this.rateLimit,
    this.securityLevel,
    this.sigchls,
    this.status,
    this.timer,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'actions': ?pulumi.Input.mapOptionalInputValue<WafRuleConfigActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'appPackage': ?pulumi.Input.mapOptionalInputValue<WafRuleConfigAppPackage, Map<String, dynamic>>(appPackage, (value) => value.toMap()),
      'appSdk': ?pulumi.Input.mapOptionalInputValue<WafRuleConfigAppSdk, Map<String, dynamic>>(appSdk, (value) => value.toMap()),
      'expression': ?expression,
      'id': ?id,
      'managedGroupId': ?managedGroupId,
      'managedList': ?managedList,
      'managedRulesets': ?pulumi.Input.mapOptionalInputValue<List<WafRuleConfigManagedRuleset>, List<Map<String, dynamic>>>(managedRulesets, (value) => pulumi.Input.encodeList<WafRuleConfigManagedRuleset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'notes': ?notes,
      'rateLimit': ?pulumi.Input.mapOptionalInputValue<WafRuleConfigRateLimit, Map<String, dynamic>>(rateLimit, (value) => value.toMap()),
      'securityLevel': ?pulumi.Input.mapOptionalInputValue<WafRuleConfigSecurityLevel, Map<String, dynamic>>(securityLevel, (value) => value.toMap()),
      'sigchls': ?sigchls,
      'status': ?status,
      'timer': ?pulumi.Input.mapOptionalInputValue<WafRuleConfigTimer, Map<String, dynamic>>(timer, (value) => value.toMap()),
      'type': ?type,
      'value': ?value,
    };
  }

  factory WafRuleConfig.fromMap(Map<String, dynamic> map) {
    return WafRuleConfig(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      actions: map['actions'] == null ? null : (WafRuleConfigActions.fromMap((map['actions'] as Map).cast<String, dynamic>())).input(),
      appPackage: map['appPackage'] == null ? null : (WafRuleConfigAppPackage.fromMap((map['appPackage'] as Map).cast<String, dynamic>())).input(),
      appSdk: map['appSdk'] == null ? null : (WafRuleConfigAppSdk.fromMap((map['appSdk'] as Map).cast<String, dynamic>())).input(),
      expression: map['expression'] == null ? null : (map['expression'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as int).input(),
      managedGroupId: map['managedGroupId'] == null ? null : (map['managedGroupId'] as int).input(),
      managedList: map['managedList'] == null ? null : (map['managedList'] as String).input(),
      managedRulesets: map['managedRulesets'] == null ? null : (pulumi.Input.decodeList<WafRuleConfigManagedRuleset>(map['managedRulesets'], (value) => WafRuleConfigManagedRuleset.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notes: map['notes'] == null ? null : (map['notes'] as String).input(),
      rateLimit: map['rateLimit'] == null ? null : (WafRuleConfigRateLimit.fromMap((map['rateLimit'] as Map).cast<String, dynamic>())).input(),
      securityLevel: map['securityLevel'] == null ? null : (WafRuleConfigSecurityLevel.fromMap((map['securityLevel'] as Map).cast<String, dynamic>())).input(),
      sigchls: map['sigchls'] == null ? null : ((map['sigchls'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      timer: map['timer'] == null ? null : (WafRuleConfigTimer.fromMap((map['timer'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

