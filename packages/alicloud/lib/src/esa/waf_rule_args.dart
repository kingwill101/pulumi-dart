// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config.dart';
import 'waf_rule_shared.dart';

/// {@template pulumi_esa_waf_rule_waf_rule_args_doc}
/// The set of arguments for WafRule.
/// {@endtemplate}
/// {@macro pulumi_esa_waf_rule_waf_rule_args_doc}
class WafRuleArgs {
  /// The specific configuration of the WAF rule. See `config` below.
  final pulumi.Input<WafRuleConfig>? config;
  /// The phase in which the WAF processes this rule.
  final pulumi.Input<String> phase;
  /// The ID of the WAF ruleset, which can be obtained by calling the [ListWafRulesets](https://www.alibabacloud.com/help/en/doc-detail/2850233.html) operation.
  final pulumi.Input<int>? rulesetId;
  final pulumi.Input<WafRuleShared>? shared;
  /// The unique identifier of the website, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  final pulumi.Input<String> siteId;
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [WafRuleArgs].
  /// [config] The specific configuration of the WAF rule. See `config` below.
  /// [phase] The phase in which the WAF processes this rule.
  /// [rulesetId] The ID of the WAF ruleset, which can be obtained by calling the [ListWafRulesets](https://www.alibabacloud.com/help/en/doc-detail/2850233.html) operation.
  /// [shared] Optional.
  /// [siteId] The unique identifier of the website, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  /// [siteVersion] Optional.
  WafRuleArgs({
    WafRuleConfig? config,
    required String phase,
    int? rulesetId,
    WafRuleShared? shared,
    required String siteId,
    int? siteVersion,
  }) :
      config = pulumi.Input.asOptionalInput<WafRuleConfig>(config),
      phase = pulumi.Input.asInput<String>(phase),
      rulesetId = pulumi.Input.asOptionalInput<int>(rulesetId),
      shared = pulumi.Input.asOptionalInput<WafRuleShared>(shared),
      siteId = pulumi.Input.asInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<WafRuleConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'phase': phase,
      'rulesetId': ?rulesetId,
      'shared': ?pulumi.Input.mapOptionalInputValue<WafRuleShared, Map<String, dynamic>>(shared, (value) => value.toMap()),
      'siteId': siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory WafRuleArgs.fromMap(Map<String, dynamic> map) {
    return WafRuleArgs(
      config: map['config'] == null ? null : WafRuleConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      phase: map['phase'] as String,
      rulesetId: map['rulesetId'] == null ? null : map['rulesetId'] as int,
      shared: map['shared'] == null ? null : WafRuleShared.fromMap((map['shared'] as Map).cast<String, dynamic>()),
      siteId: map['siteId'] as String,
      siteVersion: map['siteVersion'] == null ? null : map['siteVersion'] as int,
    );
  }
}

