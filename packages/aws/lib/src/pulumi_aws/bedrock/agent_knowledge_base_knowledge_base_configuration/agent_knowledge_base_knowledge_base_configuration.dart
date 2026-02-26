// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_knowledge_base_configuration_kendra_knowledge_base_configuration/agent_knowledge_base_knowledge_base_configuration_kendra_knowledge_base_configuration.dart';
import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration.dart';
import '../agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration/agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfiguration {
  /// Settings for an Amazon Kendra knowledge base. See <span pulumi-lang-nodejs="`kendraKnowledgeBaseConfiguration`" pulumi-lang-dotnet="`KendraKnowledgeBaseConfiguration`" pulumi-lang-go="`kendraKnowledgeBaseConfiguration`" pulumi-lang-python="`kendra_knowledge_base_configuration`" pulumi-lang-yaml="`kendraKnowledgeBaseConfiguration`" pulumi-lang-java="`kendraKnowledgeBaseConfiguration`">`kendra_knowledge_base_configuration`</span> block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration?
      kendraKnowledgeBaseConfiguration;

  /// Configurations for a knowledge base connected to an SQL database. See <span pulumi-lang-nodejs="`sqlKnowledgeBaseConfiguration`" pulumi-lang-dotnet="`SqlKnowledgeBaseConfiguration`" pulumi-lang-go="`sqlKnowledgeBaseConfiguration`" pulumi-lang-python="`sql_knowledge_base_configuration`" pulumi-lang-yaml="`sqlKnowledgeBaseConfiguration`" pulumi-lang-java="`sqlKnowledgeBaseConfiguration`">`sql_knowledge_base_configuration`</span> block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration?
      sqlKnowledgeBaseConfiguration;

  /// Type of data that the data source is converted into for the knowledge base. Valid Values: `VECTOR`, `KENDRA`, `SQL`.
  final String type;

  /// Details about the model that's used to convert the data source into vector embeddings. See <span pulumi-lang-nodejs="`vectorKnowledgeBaseConfiguration`" pulumi-lang-dotnet="`VectorKnowledgeBaseConfiguration`" pulumi-lang-go="`vectorKnowledgeBaseConfiguration`" pulumi-lang-python="`vector_knowledge_base_configuration`" pulumi-lang-yaml="`vectorKnowledgeBaseConfiguration`" pulumi-lang-java="`vectorKnowledgeBaseConfiguration`">`vector_knowledge_base_configuration`</span> block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration?
      vectorKnowledgeBaseConfiguration;

  AgentKnowledgeBaseKnowledgeBaseConfiguration({
    this.kendraKnowledgeBaseConfiguration,
    this.sqlKnowledgeBaseConfiguration,
    required this.type,
    this.vectorKnowledgeBaseConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kendraKnowledgeBaseConfigurationValue =
        kendraKnowledgeBaseConfiguration;
    if (kendraKnowledgeBaseConfigurationValue != null) {
      map['kendraKnowledgeBaseConfiguration'] =
          kendraKnowledgeBaseConfigurationValue.toMap();
    }
    final sqlKnowledgeBaseConfigurationValue = sqlKnowledgeBaseConfiguration;
    if (sqlKnowledgeBaseConfigurationValue != null) {
      map['sqlKnowledgeBaseConfiguration'] =
          sqlKnowledgeBaseConfigurationValue.toMap();
    }
    map['type'] = type;
    final vectorKnowledgeBaseConfigurationValue =
        vectorKnowledgeBaseConfiguration;
    if (vectorKnowledgeBaseConfigurationValue != null) {
      map['vectorKnowledgeBaseConfiguration'] =
          vectorKnowledgeBaseConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfiguration(
      kendraKnowledgeBaseConfiguration: map[
                  'kendraKnowledgeBaseConfiguration'] ==
              null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfiguration
              .fromMap((map['kendraKnowledgeBaseConfiguration'] as Map)
                  .cast<String, dynamic>()),
      sqlKnowledgeBaseConfiguration: map['sqlKnowledgeBaseConfiguration'] ==
              null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfiguration
              .fromMap((map['sqlKnowledgeBaseConfiguration'] as Map)
                  .cast<String, dynamic>()),
      type: map['type'] as String,
      vectorKnowledgeBaseConfiguration: map[
                  'vectorKnowledgeBaseConfiguration'] ==
              null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration
              .fromMap((map['vectorKnowledgeBaseConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
