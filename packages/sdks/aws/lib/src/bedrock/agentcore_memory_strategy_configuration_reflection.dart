// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyConfigurationReflection {
  /// Additional text to append to the model prompt for reflection processing.
  final pulumi.Input<String> appendToPrompt;
  /// ID of the foundation model to use for reflection processing.
  final pulumi.Input<String> modelId;
  /// Namespace templates for episodic reflection. Can be less nested than the episodic namespaces.
  final pulumi.Input<List<String>> namespaceTemplates;

  /// Creates a new [AgentcoreMemoryStrategyConfigurationReflection].
  /// [appendToPrompt] Additional text to append to the model prompt for reflection processing.
  /// [modelId] ID of the foundation model to use for reflection processing.
  /// [namespaceTemplates] Namespace templates for episodic reflection. Can be less nested than the episodic namespaces.
  const AgentcoreMemoryStrategyConfigurationReflection({
    required this.appendToPrompt,
    required this.modelId,
    required this.namespaceTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendToPrompt': appendToPrompt,
      'modelId': modelId,
      'namespaceTemplates': namespaceTemplates,
    };
  }

  factory AgentcoreMemoryStrategyConfigurationReflection.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyConfigurationReflection(
      appendToPrompt: pulumi.Input.fromValue(map['appendToPrompt'] as String),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      namespaceTemplates: pulumi.Input.fromValue((map['namespaceTemplates'] as List).cast<String>()),
    );
  }
}
