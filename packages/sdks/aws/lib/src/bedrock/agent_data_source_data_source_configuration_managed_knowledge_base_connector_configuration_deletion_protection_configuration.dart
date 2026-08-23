// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration {
  /// Enable or disable deletion protection for the connector. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> deletionProtectionStatus;
  /// Maximum percentage of documents that a sync job can delete from your index.
  final pulumi.Input<int>? deletionProtectionThreshold;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration].
  /// [deletionProtectionStatus] Enable or disable deletion protection for the connector. Valid values: `ENABLED`, `DISABLED`.
  /// [deletionProtectionThreshold] Maximum percentage of documents that a sync job can delete from your index.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration({
    required this.deletionProtectionStatus,
    this.deletionProtectionThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionStatus': deletionProtectionStatus,
      'deletionProtectionThreshold': ?deletionProtectionThreshold,
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationDeletionProtectionConfiguration(
      deletionProtectionStatus: pulumi.Input.fromValue(map['deletionProtectionStatus'] as String),
      deletionProtectionThreshold: (() { final guardedValue = map['deletionProtectionThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
