// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration {
  /// ARN of the KMS key used to encrypt the managed knowledge base.
  ///
  /// &gt; **NOTE:** `storageConfiguration` is not required when `knowledge_base_configuration.type` is `MANAGED`. Amazon Bedrock manages the vector store automatically for managed knowledge bases.
  final pulumi.Input<String?>? kmsKeyArn;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration].
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the managed knowledge base.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration({
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration(
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
