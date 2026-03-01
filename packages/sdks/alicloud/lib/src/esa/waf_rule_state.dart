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
    pulumi.Output<WafRuleConfig>? config,
    pulumi.Output<String>? phase,
    pulumi.Output<int>? rulesetId,
    pulumi.Output<WafRuleShared>? shared,
    pulumi.Output<String>? siteId,
    pulumi.Output<int>? siteVersion,
    pulumi.Output<int>? wafRuleId,
  }) :
      config = pulumi.Input.asOptionalInput<WafRuleConfig>(config),
      phase = pulumi.Input.asOptionalInput<String>(phase),
      rulesetId = pulumi.Input.asOptionalInput<int>(rulesetId),
      shared = pulumi.Input.asOptionalInput<WafRuleShared>(shared),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      wafRuleId = pulumi.Input.asOptionalInput<int>(wafRuleId);

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
      config: map['config'] == null ? null : pulumi.Output.create<WafRuleConfig>(WafRuleConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      phase: map['phase'] == null ? null : pulumi.Output.create<String>(map['phase'] as String),
      rulesetId: map['rulesetId'] == null ? null : pulumi.Output.create<int>(map['rulesetId'] as int),
      shared: map['shared'] == null ? null : pulumi.Output.create<WafRuleShared>(WafRuleShared.fromMap((map['shared'] as Map).cast<String, dynamic>())),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      siteVersion: map['siteVersion'] == null ? null : pulumi.Output.create<int>(map['siteVersion'] as int),
      wafRuleId: map['wafRuleId'] == null ? null : pulumi.Output.create<int>(map['wafRuleId'] as int),
    );
  }
}

