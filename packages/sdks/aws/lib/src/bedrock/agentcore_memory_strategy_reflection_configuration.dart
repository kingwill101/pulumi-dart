// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryStrategyReflectionConfiguration {
  /// Namespace templates over which to create reflections. Can be less nested than episode namespaces.
  final pulumi.Input<List<String>> namespaceTemplates;

  /// Creates a new [AgentcoreMemoryStrategyReflectionConfiguration].
  /// [namespaceTemplates] Namespace templates over which to create reflections. Can be less nested than episode namespaces.
  const AgentcoreMemoryStrategyReflectionConfiguration({
    required this.namespaceTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceTemplates': namespaceTemplates,
    };
  }

  factory AgentcoreMemoryStrategyReflectionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStrategyReflectionConfiguration(
      namespaceTemplates: pulumi.Input.fromValue((map['namespaceTemplates'] as List).cast<String>()),
    );
  }
}
