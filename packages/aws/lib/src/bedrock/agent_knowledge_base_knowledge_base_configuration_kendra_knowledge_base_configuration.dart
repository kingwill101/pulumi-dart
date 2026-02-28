// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration {
  /// ARN of the Amazon Kendra index.
  final String kendraIndexArn;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration].
  /// [kendraIndexArn] ARN of the Amazon Kendra index.
  AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration({
    required this.kendraIndexArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kendraIndexArn'] = kendraIndexArn;
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration(
      kendraIndexArn: map['kendraIndexArn'] as String,
    );
  }
}
