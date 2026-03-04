// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyConfigurationExtraction {
  /// Additional text to append to the model prompt for extraction processing.
  final pulumi.Input<String> appendToPrompt;

  /// ID of the foundation model to use for extraction processing.
  final pulumi.Input<String> modelId;

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

  factory AgentcoreMemoryStrategyConfigurationExtraction.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreMemoryStrategyConfigurationExtraction(
      appendToPrompt: pulumi.Input.fromValue(map['appendToPrompt'] as String),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
    );
  }
}
