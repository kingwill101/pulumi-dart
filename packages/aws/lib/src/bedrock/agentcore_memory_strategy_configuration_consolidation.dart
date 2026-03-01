// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreMemoryStrategyConfigurationConsolidation {
  /// Additional text to append to the model prompt for consolidation processing.
  final String appendToPrompt;

  /// ID of the foundation model to use for consolidation processing.
  final String modelId;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationConsolidation].
  /// [appendToPrompt] Additional text to append to the model prompt for consolidation processing.
  /// [modelId] ID of the foundation model to use for consolidation processing.
  AgentcoreMemoryStrategyConfigurationConsolidation({
    required this.appendToPrompt,
    required this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendToPrompt': appendToPrompt,
      'modelId': modelId,
    };
  }

  factory AgentcoreMemoryStrategyConfigurationConsolidation.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreMemoryStrategyConfigurationConsolidation(
      appendToPrompt: map['appendToPrompt'] as String,
      modelId: map['modelId'] as String,
    );
  }
}
