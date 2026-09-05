// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_online_evaluation_config_rule_filter.dart';
import 'agentcore_online_evaluation_config_rule_sampling_config.dart';
import 'agentcore_online_evaluation_config_rule_session_config.dart';

class AgentcoreOnlineEvaluationConfigRule {
  /// List of filters determining which agent traces to evaluate. Maximum 5. See `filter` Block below.
  final pulumi.Input<List<AgentcoreOnlineEvaluationConfigRuleFilter>?>? filters;
  /// Sampling configuration determining what percentage of agent traces to evaluate. See `samplingConfig` Block below.
  final pulumi.Input<AgentcoreOnlineEvaluationConfigRuleSamplingConfig> samplingConfig;
  /// Session configuration defining timeout settings for detecting when agent sessions are complete. See `sessionConfig` Block below.
  final pulumi.Input<AgentcoreOnlineEvaluationConfigRuleSessionConfig?>? sessionConfig;

  /// Creates a new [AgentcoreOnlineEvaluationConfigRule].
  /// [filters] List of filters determining which agent traces to evaluate. Maximum 5. See `filter` Block below.
  /// [samplingConfig] Sampling configuration determining what percentage of agent traces to evaluate. See `samplingConfig` Block below.
  /// [sessionConfig] Session configuration defining timeout settings for detecting when agent sessions are complete. See `sessionConfig` Block below.
  const AgentcoreOnlineEvaluationConfigRule({
    this.filters,
    required this.samplingConfig,
    this.sessionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreOnlineEvaluationConfigRuleFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<AgentcoreOnlineEvaluationConfigRuleFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'samplingConfig': pulumi.Input.mapInputValue<AgentcoreOnlineEvaluationConfigRuleSamplingConfig, Map<String, dynamic>>(samplingConfig, (value) => value.toMap()),
      'sessionConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreOnlineEvaluationConfigRuleSessionConfig, Map<String, dynamic>>(sessionConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreOnlineEvaluationConfigRule.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigRule(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreOnlineEvaluationConfigRuleFilter>(guardedValue, (value) => AgentcoreOnlineEvaluationConfigRuleFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      samplingConfig: pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigRuleSamplingConfig.fromMap((map['samplingConfig']! as Map).cast<String, dynamic>())),
      sessionConfig: (() { final guardedValue = map['sessionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigRuleSessionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
