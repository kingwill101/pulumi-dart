// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOnlineEvaluationConfigRuleSamplingConfig {
  /// Percentage of agent traces to sample for evaluation, from 0.01 to 100.
  final pulumi.Input<double> samplingPercentage;

  /// Creates a new [AgentcoreOnlineEvaluationConfigRuleSamplingConfig].
  /// [samplingPercentage] Percentage of agent traces to sample for evaluation, from 0.01 to 100.
  const AgentcoreOnlineEvaluationConfigRuleSamplingConfig({
    required this.samplingPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samplingPercentage': samplingPercentage,
    };
  }

  factory AgentcoreOnlineEvaluationConfigRuleSamplingConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigRuleSamplingConfig(
      samplingPercentage: pulumi.Input.fromValue(map['samplingPercentage'] as double),
    );
  }
}
