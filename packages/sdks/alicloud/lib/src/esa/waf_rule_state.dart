// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config.dart';
import 'waf_rule_shared.dart';

/// Input properties used for looking up and filtering WafRule resources.
class WafRuleState {
  /// The specific configuration of the WAF rule. See `config` below.
  final pulumi.Input<WafRuleConfig>? config;
  /// The phase in which the WAF processes this rule.
  final pulumi.Input<String>? phase;
  /// The ID of the WAF ruleset, which can be obtained by calling the [ListWafRulesets](https://www.alibabacloud.com/help/en/doc-detail/2850233.html) operation.
  final pulumi.Input<int>? rulesetId;
  final pulumi.Input<WafRuleShared>? shared;
  /// The unique identifier of the website, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  final pulumi.Input<String>? siteId;
  final pulumi.Input<int>? siteVersion;
  /// The unique identifier of the WAF rule.
  final pulumi.Input<int>? wafRuleId;

  /// Creates a new [WafRuleState].
  /// [config] The specific configuration of the WAF rule. See `config` below.
  /// [phase] The phase in which the WAF processes this rule.
  /// [rulesetId] The ID of the WAF ruleset, which can be obtained by calling the [ListWafRulesets](https://www.alibabacloud.com/help/en/doc-detail/2850233.html) operation.
  /// [shared] Optional.
  /// [siteId] The unique identifier of the website, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  /// [siteVersion] Optional.
  /// [wafRuleId] The unique identifier of the WAF rule.
  WafRuleState({
    this.config,
    this.phase,
    this.rulesetId,
    this.shared,
    this.siteId,
    this.siteVersion,
    this.wafRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<WafRuleConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'phase': ?phase,
      'rulesetId': ?rulesetId,
      'shared': ?pulumi.Input.mapOptionalInputValue<WafRuleShared, Map<String, dynamic>>(shared, (value) => value.toMap()),
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
      'wafRuleId': ?wafRuleId,
    };
  }

  factory WafRuleState.fromMap(Map<String, dynamic> map) {
    return WafRuleState(
      config: map['config'] == null ? null : (WafRuleConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      phase: map['phase'] == null ? null : (map['phase'] as String).input(),
      rulesetId: map['rulesetId'] == null ? null : (map['rulesetId'] as int).input(),
      shared: map['shared'] == null ? null : (WafRuleShared.fromMap((map['shared'] as Map).cast<String, dynamic>())).input(),
      siteId: map['siteId'] == null ? null : (map['siteId'] as String).input(),
      siteVersion: map['siteVersion'] == null ? null : (map['siteVersion'] as int).input(),
      wafRuleId: map['wafRuleId'] == null ? null : (map['wafRuleId'] as int).input(),
    );
  }
}

