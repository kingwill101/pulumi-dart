// ignore_for_file: unused_element, unnecessary_cast

import '../connector_profile_connector_profile_config_connector_profile_properties_custom_connector/connector_profile_connector_profile_config_connector_profile_properties_custom_connector.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_datadog/connector_profile_connector_profile_config_connector_profile_properties_datadog.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_dynatrace/connector_profile_connector_profile_config_connector_profile_properties_dynatrace.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_infor_nexus/connector_profile_connector_profile_config_connector_profile_properties_infor_nexus.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_marketo/connector_profile_connector_profile_config_connector_profile_properties_marketo.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_redshift/connector_profile_connector_profile_config_connector_profile_properties_redshift.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_salesforce/connector_profile_connector_profile_config_connector_profile_properties_salesforce.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_sapo_data/connector_profile_connector_profile_config_connector_profile_properties_sapo_data.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_service_now/connector_profile_connector_profile_config_connector_profile_properties_service_now.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_slack/connector_profile_connector_profile_config_connector_profile_properties_slack.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_snowflake/connector_profile_connector_profile_config_connector_profile_properties_snowflake.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_veeva/connector_profile_connector_profile_config_connector_profile_properties_veeva.dart';
import '../connector_profile_connector_profile_config_connector_profile_properties_zendesk/connector_profile_connector_profile_config_connector_profile_properties_zendesk.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileProperties {
  /// The connector-specific credentials required when using Amplitude. See Amplitude Connector Profile Credentials for more details.
  final Map<String, dynamic>? amplitude;

  /// The connector-specific profile properties required when using the custom connector. See Custom Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector?
      customConnector;

  /// Connector-specific properties required when using Datadog. See Generic Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog?
      datadog;

  /// The connector-specific properties required when using Dynatrace. See Generic Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace?
      dynatrace;

  /// The connector-specific credentials required when using Google Analytics. See Google Analytics Connector Profile Credentials for more details.
  final Map<String, dynamic>? googleAnalytics;

  /// The connector-specific credentials required when using Amazon Honeycode. See Honeycode Connector Profile Credentials for more details.
  final Map<String, dynamic>? honeycode;

  /// The connector-specific properties required when using Infor Nexus. See Generic Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus?
      inforNexus;

  /// Connector-specific properties required when using Marketo. See Generic Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo?
      marketo;

  /// Connector-specific properties required when using Amazon Redshift. See Redshift Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift?
      redshift;

  /// The connector-specific properties required when using Salesforce. See Salesforce Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce?
      salesforce;

  /// The connector-specific properties required when using SAPOData. See SAPOData Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData?
      sapoData;

  /// The connector-specific properties required when using ServiceNow. See Generic Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow?
      serviceNow;

  /// Connector-specific credentials required when using Singular. See Singular Connector Profile Credentials for more details.
  final Map<String, dynamic>? singular;

  /// Connector-specific properties required when using Slack. See Generic Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack?
      slack;

  /// The connector-specific properties required when using Snowflake. See Snowflake Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake?
      snowflake;

  /// The connector-specific credentials required when using Trend Micro. See Trend Micro Connector Profile Credentials for more details.
  final Map<String, dynamic>? trendmicro;

  /// Connector-specific properties required when using Veeva. See Generic Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva?
      veeva;

  /// Connector-specific properties required when using Zendesk. See Generic Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk?
      zendesk;

  ConnectorProfileConnectorProfileConfigConnectorProfileProperties({
    this.amplitude,
    this.customConnector,
    this.datadog,
    this.dynatrace,
    this.googleAnalytics,
    this.honeycode,
    this.inforNexus,
    this.marketo,
    this.redshift,
    this.salesforce,
    this.sapoData,
    this.serviceNow,
    this.singular,
    this.slack,
    this.snowflake,
    this.trendmicro,
    this.veeva,
    this.zendesk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amplitudeValue = amplitude;
    if (amplitudeValue != null) {
      map['amplitude'] = amplitudeValue;
    }
    final customConnectorValue = customConnector;
    if (customConnectorValue != null) {
      map['customConnector'] = customConnectorValue.toMap();
    }
    final datadogValue = datadog;
    if (datadogValue != null) {
      map['datadog'] = datadogValue.toMap();
    }
    final dynatraceValue = dynatrace;
    if (dynatraceValue != null) {
      map['dynatrace'] = dynatraceValue.toMap();
    }
    final googleAnalyticsValue = googleAnalytics;
    if (googleAnalyticsValue != null) {
      map['googleAnalytics'] = googleAnalyticsValue;
    }
    final honeycodeValue = honeycode;
    if (honeycodeValue != null) {
      map['honeycode'] = honeycodeValue;
    }
    final inforNexusValue = inforNexus;
    if (inforNexusValue != null) {
      map['inforNexus'] = inforNexusValue.toMap();
    }
    final marketoValue = marketo;
    if (marketoValue != null) {
      map['marketo'] = marketoValue.toMap();
    }
    final redshiftValue = redshift;
    if (redshiftValue != null) {
      map['redshift'] = redshiftValue.toMap();
    }
    final salesforceValue = salesforce;
    if (salesforceValue != null) {
      map['salesforce'] = salesforceValue.toMap();
    }
    final sapoDataValue = sapoData;
    if (sapoDataValue != null) {
      map['sapoData'] = sapoDataValue.toMap();
    }
    final serviceNowValue = serviceNow;
    if (serviceNowValue != null) {
      map['serviceNow'] = serviceNowValue.toMap();
    }
    final singularValue = singular;
    if (singularValue != null) {
      map['singular'] = singularValue;
    }
    final slackValue = slack;
    if (slackValue != null) {
      map['slack'] = slackValue.toMap();
    }
    final snowflakeValue = snowflake;
    if (snowflakeValue != null) {
      map['snowflake'] = snowflakeValue.toMap();
    }
    final trendmicroValue = trendmicro;
    if (trendmicroValue != null) {
      map['trendmicro'] = trendmicroValue;
    }
    final veevaValue = veeva;
    if (veevaValue != null) {
      map['veeva'] = veevaValue.toMap();
    }
    final zendeskValue = zendesk;
    if (zendeskValue != null) {
      map['zendesk'] = zendeskValue.toMap();
    }
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileProperties.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileProperties(
      amplitude: map['amplitude'] == null
          ? null
          : (map['amplitude'] as Map).cast<String, dynamic>(),
      customConnector: map['customConnector'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector
              .fromMap((map['customConnector'] as Map).cast<String, dynamic>()),
      datadog: map['datadog'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog
              .fromMap((map['datadog'] as Map).cast<String, dynamic>()),
      dynatrace: map['dynatrace'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace
              .fromMap((map['dynatrace'] as Map).cast<String, dynamic>()),
      googleAnalytics: map['googleAnalytics'] == null
          ? null
          : (map['googleAnalytics'] as Map).cast<String, dynamic>(),
      honeycode: map['honeycode'] == null
          ? null
          : (map['honeycode'] as Map).cast<String, dynamic>(),
      inforNexus: map['inforNexus'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus
              .fromMap((map['inforNexus'] as Map).cast<String, dynamic>()),
      marketo: map['marketo'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo
              .fromMap((map['marketo'] as Map).cast<String, dynamic>()),
      redshift: map['redshift'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift
              .fromMap((map['redshift'] as Map).cast<String, dynamic>()),
      salesforce: map['salesforce'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce
              .fromMap((map['salesforce'] as Map).cast<String, dynamic>()),
      sapoData: map['sapoData'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData
              .fromMap((map['sapoData'] as Map).cast<String, dynamic>()),
      serviceNow: map['serviceNow'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow
              .fromMap((map['serviceNow'] as Map).cast<String, dynamic>()),
      singular: map['singular'] == null
          ? null
          : (map['singular'] as Map).cast<String, dynamic>(),
      slack: map['slack'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack
              .fromMap((map['slack'] as Map).cast<String, dynamic>()),
      snowflake: map['snowflake'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake
              .fromMap((map['snowflake'] as Map).cast<String, dynamic>()),
      trendmicro: map['trendmicro'] == null
          ? null
          : (map['trendmicro'] as Map).cast<String, dynamic>(),
      veeva: map['veeva'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva
              .fromMap((map['veeva'] as Map).cast<String, dynamic>()),
      zendesk: map['zendesk'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk
              .fromMap((map['zendesk'] as Map).cast<String, dynamic>()),
    );
  }
}
