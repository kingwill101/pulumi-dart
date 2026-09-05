// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig {
  /// Namespace path template for retrieval settings.
  final pulumi.Input<String> mapBlockKey;
  /// Relevance score threshold. Valid value is between `0` and `1`.
  final pulumi.Input<double?>? relevanceScore;
  /// ID of the memory strategy.
  final pulumi.Input<String?>? strategyId;
  /// Number of top results to retrieve.
  final pulumi.Input<int?>? topK;

  /// Creates a new [AgentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig].
  /// [mapBlockKey] Namespace path template for retrieval settings.
  /// [relevanceScore] Relevance score threshold. Valid value is between `0` and `1`.
  /// [strategyId] ID of the memory strategy.
  /// [topK] Number of top results to retrieve.
  const AgentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig({
    required this.mapBlockKey,
    this.relevanceScore,
    this.strategyId,
    this.topK,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapBlockKey': mapBlockKey,
      'relevanceScore': ?relevanceScore,
      'strategyId': ?strategyId,
      'topK': ?topK,
    };
  }

  factory AgentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessMemoryAgentcoreMemoryConfigurationRetrievalConfig(
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
      relevanceScore: (() { final guardedValue = map['relevanceScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      strategyId: (() { final guardedValue = map['strategyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topK: (() { final guardedValue = map['topK']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
