// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_confluence_configuration.dart';
import 'agent_data_source_data_source_configuration_managed_knowledge_base_connector_configuration.dart';
import 'agent_data_source_data_source_configuration_s3_configuration.dart';
import 'agent_data_source_data_source_configuration_salesforce_configuration.dart';
import 'agent_data_source_data_source_configuration_share_point_configuration.dart';
import 'agent_data_source_data_source_configuration_web_configuration.dart';

class AgentDataSourceDataSourceConfiguration {
  /// Configuration details for the Confluence data source. See `data_source_configuration.confluence_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationConfluenceConfiguration?>? confluenceConfiguration;
  /// Configuration details for a Managed Knowledge Base connector data source. See `managedKnowledgeBaseConnectorConfiguration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration?>? managedKnowledgeBaseConnectorConfiguration;
  /// Configuration details for the S3 object that contains the data source. See `s3Configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationS3Configuration?>? s3Configuration;
  /// Configuration details for the Salesforce data source. See `data_source_configuration.salesforce_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSalesforceConfiguration?>? salesforceConfiguration;
  /// Configuration details for the SharePoint data source. See `data_source_configuration.share_point_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationSharePointConfiguration?>? sharePointConfiguration;
  /// Type of storage for the data source. Valid values: `S3`, `WEB`, `CONFLUENCE`, `SALESFORCE`, `SHAREPOINT`, `CUSTOM`, `REDSHIFT_METADATA`, `MANAGED_KNOWLEDGE_BASE_CONNECTOR`.
  final pulumi.Input<String> type;
  /// Configuration details for the web data source. See `data_source_configuration.web_configuration` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationWebConfiguration?>? webConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfiguration].
  /// [confluenceConfiguration] Configuration details for the Confluence data source. See `data_source_configuration.confluence_configuration` Block for details.
  /// [managedKnowledgeBaseConnectorConfiguration] Configuration details for a Managed Knowledge Base connector data source. See `managedKnowledgeBaseConnectorConfiguration` Block for details.
  /// [s3Configuration] Configuration details for the S3 object that contains the data source. See `s3Configuration` Block for details.
  /// [salesforceConfiguration] Configuration details for the Salesforce data source. See `data_source_configuration.salesforce_configuration` Block for details.
  /// [sharePointConfiguration] Configuration details for the SharePoint data source. See `data_source_configuration.share_point_configuration` Block for details.
  /// [type] Type of storage for the data source. Valid values: `S3`, `WEB`, `CONFLUENCE`, `SALESFORCE`, `SHAREPOINT`, `CUSTOM`, `REDSHIFT_METADATA`, `MANAGED_KNOWLEDGE_BASE_CONNECTOR`.
  /// [webConfiguration] Configuration details for the web data source. See `data_source_configuration.web_configuration` Block for details.
  const AgentDataSourceDataSourceConfiguration({
    this.confluenceConfiguration,
    this.managedKnowledgeBaseConnectorConfiguration,
    this.s3Configuration,
    this.salesforceConfiguration,
    this.sharePointConfiguration,
    required this.type,
    this.webConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confluenceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationConfluenceConfiguration, Map<String, dynamic>>(confluenceConfiguration, (value) => value.toMap()),
      'managedKnowledgeBaseConnectorConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration, Map<String, dynamic>>(managedKnowledgeBaseConnectorConfiguration, (value) => value.toMap()),
      's3Configuration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
      'salesforceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationSalesforceConfiguration, Map<String, dynamic>>(salesforceConfiguration, (value) => value.toMap()),
      'sharePointConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationSharePointConfiguration, Map<String, dynamic>>(sharePointConfiguration, (value) => value.toMap()),
      'type': type,
      'webConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfigurationWebConfiguration, Map<String, dynamic>>(webConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfiguration(
      confluenceConfiguration: (() { final guardedValue = map['confluenceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationConfluenceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedKnowledgeBaseConnectorConfiguration: (() { final guardedValue = map['managedKnowledgeBaseConnectorConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Configuration: (() { final guardedValue = map['s3Configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforceConfiguration: (() { final guardedValue = map['salesforceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationSalesforceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sharePointConfiguration: (() { final guardedValue = map['sharePointConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationSharePointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      webConfiguration: (() { final guardedValue = map['webConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationWebConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
