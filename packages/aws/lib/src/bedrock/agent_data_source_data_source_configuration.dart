// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_data_source_configuration_confluence_configuration.dart';
import 'agent_data_source_data_source_configuration_s3_configuration.dart';
import 'agent_data_source_data_source_configuration_salesforce_configuration.dart';
import 'agent_data_source_data_source_configuration_share_point_configuration.dart';
import 'agent_data_source_data_source_configuration_web_configuration.dart';

class AgentDataSourceDataSourceConfiguration {
  /// Details about the configuration of the Confluence data source. See `confluence_data_source_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationConfluenceConfiguration?
      confluenceConfiguration;

  /// Details about the configuration of the S3 object containing the data source. See `s3_data_source_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationS3Configuration? s3Configuration;

  /// Details about the configuration of the Salesforce data source. See `salesforce_data_source_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationSalesforceConfiguration?
      salesforceConfiguration;

  /// Details about the configuration of the SharePoint data source. See `share_point_data_source_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationSharePointConfiguration?
      sharePointConfiguration;

  /// Type of storage for the data source. Valid values: `S3`, `WEB`, `CONFLUENCE`, `SALESFORCE`, `SHAREPOINT`, `CUSTOM`, `REDSHIFT_METADATA`.
  final String type;

  /// Details about the configuration of the web data source. See `web_data_source_configuration` block for details.
  final AgentDataSourceDataSourceConfigurationWebConfiguration?
      webConfiguration;

  /// Creates a new [AgentDataSourceDataSourceConfiguration].
  /// [confluenceConfiguration] Details about the configuration of the Confluence data source. See `confluence_data_source_configuration` block for details.
  /// [s3Configuration] Details about the configuration of the S3 object containing the data source. See `s3_data_source_configuration` block for details.
  /// [salesforceConfiguration] Details about the configuration of the Salesforce data source. See `salesforce_data_source_configuration` block for details.
  /// [sharePointConfiguration] Details about the configuration of the SharePoint data source. See `share_point_data_source_configuration` block for details.
  /// [type] Type of storage for the data source. Valid values: `S3`, `WEB`, `CONFLUENCE`, `SALESFORCE`, `SHAREPOINT`, `CUSTOM`, `REDSHIFT_METADATA`.
  /// [webConfiguration] Details about the configuration of the web data source. See `web_data_source_configuration` block for details.
  AgentDataSourceDataSourceConfiguration({
    this.confluenceConfiguration,
    this.s3Configuration,
    this.salesforceConfiguration,
    this.sharePointConfiguration,
    required this.type,
    this.webConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confluenceConfigurationValue = confluenceConfiguration;
    if (confluenceConfigurationValue != null) {
      map['confluenceConfiguration'] = confluenceConfigurationValue.toMap();
    }
    final s3ConfigurationValue = s3Configuration;
    if (s3ConfigurationValue != null) {
      map['s3Configuration'] = s3ConfigurationValue.toMap();
    }
    final salesforceConfigurationValue = salesforceConfiguration;
    if (salesforceConfigurationValue != null) {
      map['salesforceConfiguration'] = salesforceConfigurationValue.toMap();
    }
    final sharePointConfigurationValue = sharePointConfiguration;
    if (sharePointConfigurationValue != null) {
      map['sharePointConfiguration'] = sharePointConfigurationValue.toMap();
    }
    map['type'] = type;
    final webConfigurationValue = webConfiguration;
    if (webConfigurationValue != null) {
      map['webConfiguration'] = webConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfiguration(
      confluenceConfiguration: map['confluenceConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationConfluenceConfiguration
              .fromMap((map['confluenceConfiguration'] as Map)
                  .cast<String, dynamic>()),
      s3Configuration: map['s3Configuration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>()),
      salesforceConfiguration: map['salesforceConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationSalesforceConfiguration
              .fromMap((map['salesforceConfiguration'] as Map)
                  .cast<String, dynamic>()),
      sharePointConfiguration: map['sharePointConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationSharePointConfiguration
              .fromMap((map['sharePointConfiguration'] as Map)
                  .cast<String, dynamic>()),
      type: map['type'] as String,
      webConfiguration: map['webConfiguration'] == null
          ? null
          : AgentDataSourceDataSourceConfigurationWebConfiguration.fromMap(
              (map['webConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
