// ignore_for_file: unused_element, unnecessary_cast


class AgentcoreMemoryStrategyConfigurationExtraction {
  /// Additional text to append to the model prompt for extraction processing.
  final String appendToPrompt;
  /// ID of the foundation model to use for extraction processing.
  final String modelId;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationExtraction].
  /// [appendToPrompt] Additional text to append to the model prompt for extraction processing.
  /// [modelId] ID of the foundation model to use for extraction processing.
  AgentcoreMemoryStrategyConfigurationExtraction({
    required this.appendToPrompt,
    required this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendToPrompt': appendToPrompt,
      'modelId': modelId,
    };
  }

  factory AgentcoreMemoryStrategyConfigurationExtraction.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationExtraction(
      appendToPrompt: map['appendToPrompt'] as String,
      modelId: map['modelId'] as String,
    );
  }
}

