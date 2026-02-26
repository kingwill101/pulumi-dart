// ignore_for_file: unused_element, unnecessary_cast

import '../connector_profile_connector_profile_config_connector_profile_credentials_amplitude/connector_profile_connector_profile_config_connector_profile_credentials_amplitude.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_custom_connector/connector_profile_connector_profile_config_connector_profile_credentials_custom_connector.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_datadog/connector_profile_connector_profile_config_connector_profile_credentials_datadog.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_dynatrace/connector_profile_connector_profile_config_connector_profile_credentials_dynatrace.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_google_analytics/connector_profile_connector_profile_config_connector_profile_credentials_google_analytics.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_honeycode/connector_profile_connector_profile_config_connector_profile_credentials_honeycode.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_infor_nexus/connector_profile_connector_profile_config_connector_profile_credentials_infor_nexus.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_marketo/connector_profile_connector_profile_config_connector_profile_credentials_marketo.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_redshift/connector_profile_connector_profile_config_connector_profile_credentials_redshift.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_salesforce/connector_profile_connector_profile_config_connector_profile_credentials_salesforce.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_sapo_data/connector_profile_connector_profile_config_connector_profile_credentials_sapo_data.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_service_now/connector_profile_connector_profile_config_connector_profile_credentials_service_now.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_singular/connector_profile_connector_profile_config_connector_profile_credentials_singular.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_slack/connector_profile_connector_profile_config_connector_profile_credentials_slack.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_snowflake/connector_profile_connector_profile_config_connector_profile_credentials_snowflake.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_trendmicro/connector_profile_connector_profile_config_connector_profile_credentials_trendmicro.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_veeva/connector_profile_connector_profile_config_connector_profile_credentials_veeva.dart';
import '../connector_profile_connector_profile_config_connector_profile_credentials_zendesk/connector_profile_connector_profile_config_connector_profile_credentials_zendesk.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentials {
  /// The connector-specific credentials required when using Amplitude. See Amplitude Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude?
      amplitude;

  /// The connector-specific profile credentials required when using the custom connector. See Custom Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector?
      customConnector;

  /// Connector-specific credentials required when using Datadog. See Datadog Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog?
      datadog;

  /// The connector-specific credentials required when using Dynatrace. See Dynatrace Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace?
      dynatrace;

  /// The connector-specific credentials required when using Google Analytics. See Google Analytics Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics?
      googleAnalytics;

  /// The connector-specific credentials required when using Amazon Honeycode. See Honeycode Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode?
      honeycode;

  /// The connector-specific credentials required when using Infor Nexus. See Infor Nexus Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus?
      inforNexus;

  /// Connector-specific credentials required when using Marketo. See Marketo Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo?
      marketo;

  /// Connector-specific credentials required when using Amazon Redshift. See Redshift Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift?
      redshift;

  /// The connector-specific credentials required when using Salesforce. See Salesforce Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce?
      salesforce;

  /// The connector-specific credentials required when using SAPOData. See SAPOData Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData?
      sapoData;

  /// The connector-specific credentials required when using ServiceNow. See ServiceNow Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow?
      serviceNow;

  /// Connector-specific credentials required when using Singular. See Singular Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular?
      singular;

  /// Connector-specific credentials required when using Slack. See Slack Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack?
      slack;

  /// The connector-specific credentials required when using Snowflake. See Snowflake Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake?
      snowflake;

  /// The connector-specific credentials required when using Trend Micro. See Trend Micro Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro?
      trendmicro;

  /// Connector-specific credentials required when using Veeva. See Veeva Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva?
      veeva;

  /// Connector-specific credentials required when using Zendesk. See Zendesk Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk?
      zendesk;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentials({
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
      map['amplitude'] = amplitudeValue.toMap();
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
      map['googleAnalytics'] = googleAnalyticsValue.toMap();
    }
    final honeycodeValue = honeycode;
    if (honeycodeValue != null) {
      map['honeycode'] = honeycodeValue.toMap();
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
      map['singular'] = singularValue.toMap();
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
      map['trendmicro'] = trendmicroValue.toMap();
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

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentials.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentials(
      amplitude: map['amplitude'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude
              .fromMap((map['amplitude'] as Map).cast<String, dynamic>()),
      customConnector: map['customConnector'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector
              .fromMap((map['customConnector'] as Map).cast<String, dynamic>()),
      datadog: map['datadog'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog
              .fromMap((map['datadog'] as Map).cast<String, dynamic>()),
      dynatrace: map['dynatrace'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace
              .fromMap((map['dynatrace'] as Map).cast<String, dynamic>()),
      googleAnalytics: map['googleAnalytics'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics
              .fromMap((map['googleAnalytics'] as Map).cast<String, dynamic>()),
      honeycode: map['honeycode'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode
              .fromMap((map['honeycode'] as Map).cast<String, dynamic>()),
      inforNexus: map['inforNexus'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus
              .fromMap((map['inforNexus'] as Map).cast<String, dynamic>()),
      marketo: map['marketo'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo
              .fromMap((map['marketo'] as Map).cast<String, dynamic>()),
      redshift: map['redshift'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift
              .fromMap((map['redshift'] as Map).cast<String, dynamic>()),
      salesforce: map['salesforce'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce
              .fromMap((map['salesforce'] as Map).cast<String, dynamic>()),
      sapoData: map['sapoData'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData
              .fromMap((map['sapoData'] as Map).cast<String, dynamic>()),
      serviceNow: map['serviceNow'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow
              .fromMap((map['serviceNow'] as Map).cast<String, dynamic>()),
      singular: map['singular'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular
              .fromMap((map['singular'] as Map).cast<String, dynamic>()),
      slack: map['slack'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack
              .fromMap((map['slack'] as Map).cast<String, dynamic>()),
      snowflake: map['snowflake'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake
              .fromMap((map['snowflake'] as Map).cast<String, dynamic>()),
      trendmicro: map['trendmicro'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro
              .fromMap((map['trendmicro'] as Map).cast<String, dynamic>()),
      veeva: map['veeva'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva
              .fromMap((map['veeva'] as Map).cast<String, dynamic>()),
      zendesk: map['zendesk'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk
              .fromMap((map['zendesk'] as Map).cast<String, dynamic>()),
    );
  }
}
