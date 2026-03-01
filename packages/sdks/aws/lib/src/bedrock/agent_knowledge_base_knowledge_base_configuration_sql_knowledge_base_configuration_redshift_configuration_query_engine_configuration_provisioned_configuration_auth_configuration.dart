// ignore_for_file: unused_element, unnecessary_cast


class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration {
  /// Database username for authentication to an Amazon Redshift provisioned data warehouse.
  final String? databaseUser;
  /// Type of authentication to use. Valid values: `IAM`, `USERNAME_PASSWORD`.
  final String type;
  /// ARN of a Secrets Manager secret for authentication.
  final String? usernamePasswordSecretArn;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration].
  /// [databaseUser] Database username for authentication to an Amazon Redshift provisioned data warehouse.
  /// [type] Type of authentication to use. Valid values: `IAM`, `USERNAME_PASSWORD`.
  /// [usernamePasswordSecretArn] ARN of a Secrets Manager secret for authentication.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration({
    this.databaseUser,
    required this.type,
    this.usernamePasswordSecretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseUser': ?databaseUser,
      'type': type,
      'usernamePasswordSecretArn': ?usernamePasswordSecretArn,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration(
      databaseUser: map['databaseUser'] == null ? null : map['databaseUser'] as String,
      type: map['type'] as String,
      usernamePasswordSecretArn: map['usernamePasswordSecretArn'] == null ? null : map['usernamePasswordSecretArn'] as String,
    );
  }
}

