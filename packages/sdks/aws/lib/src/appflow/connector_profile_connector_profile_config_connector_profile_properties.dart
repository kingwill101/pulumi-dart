// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_properties_custom_connector.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_datadog.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_dynatrace.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_infor_nexus.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_marketo.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_redshift.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_salesforce.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_sapo_data.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_service_now.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_slack.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_snowflake.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_veeva.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties_zendesk.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileProperties {
  /// The connector-specific credentials required when using Amplitude. See Amplitude Connector Profile Credentials for more details.
  final pulumi.Input<Map<String, dynamic>>? amplitude;
  /// The connector-specific profile properties required when using the custom connector. See Custom Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector>? customConnector;
  /// Connector-specific properties required when using Datadog. See Generic Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog>? datadog;
  /// The connector-specific properties required when using Dynatrace. See Generic Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace>? dynatrace;
  /// The connector-specific credentials required when using Google Analytics. See Google Analytics Connector Profile Credentials for more details.
  final pulumi.Input<Map<String, dynamic>>? googleAnalytics;
  /// The connector-specific credentials required when using Amazon Honeycode. See Honeycode Connector Profile Credentials for more details.
  final pulumi.Input<Map<String, dynamic>>? honeycode;
  /// The connector-specific properties required when using Infor Nexus. See Generic Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus>? inforNexus;
  /// Connector-specific properties required when using Marketo. See Generic Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo>? marketo;
  /// Connector-specific properties required when using Amazon Redshift. See Redshift Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift>? redshift;
  /// The connector-specific properties required when using Salesforce. See Salesforce Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce>? salesforce;
  /// The connector-specific properties required when using SAPOData. See SAPOData Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData>? sapoData;
  /// The connector-specific properties required when using ServiceNow. See Generic Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow>? serviceNow;
  /// Connector-specific credentials required when using Singular. See Singular Connector Profile Credentials for more details.
  final pulumi.Input<Map<String, dynamic>>? singular;
  /// Connector-specific properties required when using Slack. See Generic Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack>? slack;
  /// The connector-specific properties required when using Snowflake. See Snowflake Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake>? snowflake;
  /// The connector-specific credentials required when using Trend Micro. See Trend Micro Connector Profile Credentials for more details.
  final pulumi.Input<Map<String, dynamic>>? trendmicro;
  /// Connector-specific properties required when using Veeva. See Generic Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva>? veeva;
  /// Connector-specific properties required when using Zendesk. See Generic Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk>? zendesk;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileProperties].
  /// [amplitude] The connector-specific credentials required when using Amplitude. See Amplitude Connector Profile Credentials for more details.
  /// [customConnector] The connector-specific profile properties required when using the custom connector. See Custom Connector Profile Properties for more details.
  /// [datadog] Connector-specific properties required when using Datadog. See Generic Connector Profile Properties for more details.
  /// [dynatrace] The connector-specific properties required when using Dynatrace. See Generic Connector Profile Properties for more details.
  /// [googleAnalytics] The connector-specific credentials required when using Google Analytics. See Google Analytics Connector Profile Credentials for more details.
  /// [honeycode] The connector-specific credentials required when using Amazon Honeycode. See Honeycode Connector Profile Credentials for more details.
  /// [inforNexus] The connector-specific properties required when using Infor Nexus. See Generic Connector Profile Properties for more details.
  /// [marketo] Connector-specific properties required when using Marketo. See Generic Connector Profile Properties for more details.
  /// [redshift] Connector-specific properties required when using Amazon Redshift. See Redshift Connector Profile Properties for more details.
  /// [salesforce] The connector-specific properties required when using Salesforce. See Salesforce Connector Profile Properties for more details.
  /// [sapoData] The connector-specific properties required when using SAPOData. See SAPOData Connector Profile Properties for more details.
  /// [serviceNow] The connector-specific properties required when using ServiceNow. See Generic Connector Profile Properties for more details.
  /// [singular] Connector-specific credentials required when using Singular. See Singular Connector Profile Credentials for more details.
  /// [slack] Connector-specific properties required when using Slack. See Generic Connector Profile Properties for more details.
  /// [snowflake] The connector-specific properties required when using Snowflake. See Snowflake Connector Profile Properties for more details.
  /// [trendmicro] The connector-specific credentials required when using Trend Micro. See Trend Micro Connector Profile Credentials for more details.
  /// [veeva] Connector-specific properties required when using Veeva. See Generic Connector Profile Properties for more details.
  /// [zendesk] Connector-specific properties required when using Zendesk. See Generic Connector Profile Properties for more details.
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
    return <String, dynamic>{
      'amplitude': ?amplitude,
      'customConnector': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector, Map<String, dynamic>>(customConnector, (value) => value.toMap()),
      'datadog': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'dynatrace': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace, Map<String, dynamic>>(dynatrace, (value) => value.toMap()),
      'googleAnalytics': ?googleAnalytics,
      'honeycode': ?honeycode,
      'inforNexus': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus, Map<String, dynamic>>(inforNexus, (value) => value.toMap()),
      'marketo': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo, Map<String, dynamic>>(marketo, (value) => value.toMap()),
      'redshift': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift, Map<String, dynamic>>(redshift, (value) => value.toMap()),
      'salesforce': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce, Map<String, dynamic>>(salesforce, (value) => value.toMap()),
      'sapoData': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData, Map<String, dynamic>>(sapoData, (value) => value.toMap()),
      'serviceNow': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow, Map<String, dynamic>>(serviceNow, (value) => value.toMap()),
      'singular': ?singular,
      'slack': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack, Map<String, dynamic>>(slack, (value) => value.toMap()),
      'snowflake': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake, Map<String, dynamic>>(snowflake, (value) => value.toMap()),
      'trendmicro': ?trendmicro,
      'veeva': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva, Map<String, dynamic>>(veeva, (value) => value.toMap()),
      'zendesk': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk, Map<String, dynamic>>(zendesk, (value) => value.toMap()),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileProperties.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileProperties(
      amplitude: (() { final guardedValue = map['amplitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      customConnector: (() { final guardedValue = map['customConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datadog: (() { final guardedValue = map['datadog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynatrace: (() { final guardedValue = map['dynatrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleAnalytics: (() { final guardedValue = map['googleAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      honeycode: (() { final guardedValue = map['honeycode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      inforNexus: (() { final guardedValue = map['inforNexus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      marketo: (() { final guardedValue = map['marketo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redshift: (() { final guardedValue = map['redshift']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesRedshift.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforce: (() { final guardedValue = map['salesforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSalesforce.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sapoData: (() { final guardedValue = map['sapoData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceNow: (() { final guardedValue = map['serviceNow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singular: (() { final guardedValue = map['singular']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      slack: (() { final guardedValue = map['slack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snowflake: (() { final guardedValue = map['snowflake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSnowflake.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trendmicro: (() { final guardedValue = map['trendmicro']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      veeva: (() { final guardedValue = map['veeva']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zendesk: (() { final guardedValue = map['zendesk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

