// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_confluence_configuration.dart';
import 'agent_data_source_data_source_configuration_s3_configuration.dart';
import 'agent_data_source_data_source_configuration_salesforce_configuration.dart';
import 'agent_data_source_data_source_configuration_share_point_configuration.dart';
import 'agent_data_source_data_source_configuration_web_configuration.dart';

class AgentDataSourceDataSourceConfiguration {
  /// Details about the configuration of the Confluence data source. See `confluence_data_source_configuration` block for details.
  final pulumi.Input<
    AgentDataSourceDataSourceConfigurationConfluenceConfiguration
  >?
  confluenceConfiguration;

  /// Details about the configuration of the S3 object containing the data source. See `s3_data_source_configuration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationS3Configuration>?
  s3Configuration;

  /// Details about the configuration of the Salesforce data source. See `salesforce_data_source_configuration` block for details.
  final pulumi.Input<
    AgentDataSourceDataSourceConfigurationSalesforceConfiguration
  >?
  salesforceConfiguration;

  /// Details about the configuration of the SharePoint data source. See `share_point_data_source_configuration` block for details.
  final pulumi.Input<
    AgentDataSourceDataSourceConfigurationSharePointConfiguration
  >?
  sharePointConfiguration;

  /// Type of storage for the data source. Valid values: `S3`, `WEB`, `CONFLUENCE`, `SALESFORCE`, `SHAREPOINT`, `CUSTOM`, `REDSHIFT_METADATA`.
  final pulumi.Input<String> type;

  /// Details about the configuration of the web data source. See `web_data_source_configuration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationWebConfiguration>?
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
    return <String, dynamic>{
      'confluenceConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentDataSourceDataSourceConfigurationConfluenceConfiguration,
            Map<String, dynamic>
          >(confluenceConfiguration, (value) => value.toMap()),
      's3Configuration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentDataSourceDataSourceConfigurationS3Configuration,
            Map<String, dynamic>
          >(s3Configuration, (value) => value.toMap()),
      'salesforceConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentDataSourceDataSourceConfigurationSalesforceConfiguration,
            Map<String, dynamic>
          >(salesforceConfiguration, (value) => value.toMap()),
      'sharePointConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentDataSourceDataSourceConfigurationSharePointConfiguration,
            Map<String, dynamic>
          >(sharePointConfiguration, (value) => value.toMap()),
      'type': type,
      'webConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentDataSourceDataSourceConfigurationWebConfiguration,
            Map<String, dynamic>
          >(webConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentDataSourceDataSourceConfiguration(
      confluenceConfiguration: (() {
        final guardedValue = map['confluenceConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentDataSourceDataSourceConfigurationConfluenceConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3Configuration: (() {
        final guardedValue = map['s3Configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentDataSourceDataSourceConfigurationS3Configuration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      salesforceConfiguration: (() {
        final guardedValue = map['salesforceConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentDataSourceDataSourceConfigurationSalesforceConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sharePointConfiguration: (() {
        final guardedValue = map['sharePointConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentDataSourceDataSourceConfigurationSharePointConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      webConfiguration: (() {
        final guardedValue = map['webConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentDataSourceDataSourceConfigurationWebConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
