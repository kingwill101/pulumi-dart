// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig {
  /// Namespace path template for retrieval settings.
  final pulumi.Input<String> mapBlockKey;
  /// Relevance score threshold. Valid value is between `0` and `1`.
  final pulumi.Input<double> relevanceScore;
  /// ID of the memory strategy.
  final pulumi.Input<String> strategyId;
  /// Number of top results to retrieve.
  final pulumi.Input<int> topK;

  /// Creates a new [AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig].
  /// [mapBlockKey] Namespace path template for retrieval settings.
  /// [relevanceScore] Relevance score threshold. Valid value is between `0` and `1`.
  /// [strategyId] ID of the memory strategy.
  /// [topK] Number of top results to retrieve.
  const AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig({
    required this.mapBlockKey,
    required this.relevanceScore,
    required this.strategyId,
    required this.topK,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapBlockKey': mapBlockKey,
      'relevanceScore': relevanceScore,
      'strategyId': strategyId,
      'topK': topK,
    };
  }

  factory AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessMemoryActualAgentcoreMemoryConfigurationRetrievalConfig(
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
      relevanceScore: pulumi.Input.fromValue((map['relevanceScore'] as num).toDouble()),
      strategyId: pulumi.Input.fromValue(map['strategyId'] as String),
      topK: pulumi.Input.fromValue((map['topK'] as num).toInt()),
    );
  }
}
