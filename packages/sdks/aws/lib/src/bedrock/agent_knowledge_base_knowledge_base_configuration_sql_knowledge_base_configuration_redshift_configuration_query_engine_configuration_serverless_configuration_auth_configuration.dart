// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration {
  /// Type of authentication to use. Valid values: `IAM`, `USERNAME_PASSWORD`.
  final pulumi.Input<String> type;
  /// ARN of a Secrets Manager secret for authentication.
  final pulumi.Input<String>? usernamePasswordSecretArn;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration].
  /// [type] Type of authentication to use. Valid values: `IAM`, `USERNAME_PASSWORD`.
  /// [usernamePasswordSecretArn] ARN of a Secrets Manager secret for authentication.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration({
    required this.type,
    this.usernamePasswordSecretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'usernamePasswordSecretArn': ?usernamePasswordSecretArn,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration(
      type: (map['type'] as String).input(),
      usernamePasswordSecretArn: map['usernamePasswordSecretArn'] == null ? null : ((map['usernamePasswordSecretArn'] as String).input()).input(),
    );
  }
}

