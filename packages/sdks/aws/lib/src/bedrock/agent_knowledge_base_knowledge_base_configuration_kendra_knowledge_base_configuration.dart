// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration {
  /// ARN of the Amazon Kendra index.
  final pulumi.Input<String> kendraIndexArn;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration].
  /// [kendraIndexArn] ARN of the Amazon Kendra index.
  AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration({
    required this.kendraIndexArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kendraIndexArn': kendraIndexArn,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration(
      kendraIndexArn: (map['kendraIndexArn'] as String).input(),
    );
  }
}

