// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_amplitude.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_datadog.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_dynatrace.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_google_analytics.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_honeycode.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_infor_nexus.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_marketo.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_redshift.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_salesforce.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_sapo_data.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_service_now.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_singular.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_slack.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_snowflake.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_trendmicro.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_veeva.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_zendesk.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentials {
  /// The connector-specific credentials required when using Amplitude. See Amplitude Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude>? amplitude;
  /// The connector-specific profile credentials required when using the custom connector. See Custom Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector>? customConnector;
  /// Connector-specific credentials required when using Datadog. See Datadog Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog>? datadog;
  /// The connector-specific credentials required when using Dynatrace. See Dynatrace Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace>? dynatrace;
  /// The connector-specific credentials required when using Google Analytics. See Google Analytics Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics>? googleAnalytics;
  /// The connector-specific credentials required when using Amazon Honeycode. See Honeycode Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode>? honeycode;
  /// The connector-specific credentials required when using Infor Nexus. See Infor Nexus Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus>? inforNexus;
  /// Connector-specific credentials required when using Marketo. See Marketo Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo>? marketo;
  /// Connector-specific credentials required when using Amazon Redshift. See Redshift Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift>? redshift;
  /// The connector-specific credentials required when using Salesforce. See Salesforce Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce>? salesforce;
  /// The connector-specific credentials required when using SAPOData. See SAPOData Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData>? sapoData;
  /// The connector-specific credentials required when using ServiceNow. See ServiceNow Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow>? serviceNow;
  /// Connector-specific credentials required when using Singular. See Singular Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular>? singular;
  /// Connector-specific credentials required when using Slack. See Slack Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack>? slack;
  /// The connector-specific credentials required when using Snowflake. See Snowflake Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake>? snowflake;
  /// The connector-specific credentials required when using Trend Micro. See Trend Micro Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro>? trendmicro;
  /// Connector-specific credentials required when using Veeva. See Veeva Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva>? veeva;
  /// Connector-specific credentials required when using Zendesk. See Zendesk Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk>? zendesk;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentials].
  /// [amplitude] The connector-specific credentials required when using Amplitude. See Amplitude Connector Profile Credentials for more details.
  /// [customConnector] The connector-specific profile credentials required when using the custom connector. See Custom Connector Profile Credentials for more details.
  /// [datadog] Connector-specific credentials required when using Datadog. See Datadog Connector Profile Credentials for more details.
  /// [dynatrace] The connector-specific credentials required when using Dynatrace. See Dynatrace Connector Profile Credentials for more details.
  /// [googleAnalytics] The connector-specific credentials required when using Google Analytics. See Google Analytics Connector Profile Credentials for more details.
  /// [honeycode] The connector-specific credentials required when using Amazon Honeycode. See Honeycode Connector Profile Credentials for more details.
  /// [inforNexus] The connector-specific credentials required when using Infor Nexus. See Infor Nexus Connector Profile Credentials for more details.
  /// [marketo] Connector-specific credentials required when using Marketo. See Marketo Connector Profile Credentials for more details.
  /// [redshift] Connector-specific credentials required when using Amazon Redshift. See Redshift Connector Profile Credentials for more details.
  /// [salesforce] The connector-specific credentials required when using Salesforce. See Salesforce Connector Profile Credentials for more details.
  /// [sapoData] The connector-specific credentials required when using SAPOData. See SAPOData Connector Profile Credentials for more details.
  /// [serviceNow] The connector-specific credentials required when using ServiceNow. See ServiceNow Connector Profile Credentials for more details.
  /// [singular] Connector-specific credentials required when using Singular. See Singular Connector Profile Credentials for more details.
  /// [slack] Connector-specific credentials required when using Slack. See Slack Connector Profile Credentials for more details.
  /// [snowflake] The connector-specific credentials required when using Snowflake. See Snowflake Connector Profile Credentials for more details.
  /// [trendmicro] The connector-specific credentials required when using Trend Micro. See Trend Micro Connector Profile Credentials for more details.
  /// [veeva] Connector-specific credentials required when using Veeva. See Veeva Connector Profile Credentials for more details.
  /// [zendesk] Connector-specific credentials required when using Zendesk. See Zendesk Connector Profile Credentials for more details.
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
    return <String, dynamic>{
      'amplitude': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude, Map<String, dynamic>>(amplitude, (value) => value.toMap()),
      'customConnector': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector, Map<String, dynamic>>(customConnector, (value) => value.toMap()),
      'datadog': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'dynatrace': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace, Map<String, dynamic>>(dynatrace, (value) => value.toMap()),
      'googleAnalytics': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics, Map<String, dynamic>>(googleAnalytics, (value) => value.toMap()),
      'honeycode': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode, Map<String, dynamic>>(honeycode, (value) => value.toMap()),
      'inforNexus': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus, Map<String, dynamic>>(inforNexus, (value) => value.toMap()),
      'marketo': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo, Map<String, dynamic>>(marketo, (value) => value.toMap()),
      'redshift': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift, Map<String, dynamic>>(redshift, (value) => value.toMap()),
      'salesforce': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce, Map<String, dynamic>>(salesforce, (value) => value.toMap()),
      'sapoData': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData, Map<String, dynamic>>(sapoData, (value) => value.toMap()),
      'serviceNow': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow, Map<String, dynamic>>(serviceNow, (value) => value.toMap()),
      'singular': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular, Map<String, dynamic>>(singular, (value) => value.toMap()),
      'slack': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack, Map<String, dynamic>>(slack, (value) => value.toMap()),
      'snowflake': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake, Map<String, dynamic>>(snowflake, (value) => value.toMap()),
      'trendmicro': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro, Map<String, dynamic>>(trendmicro, (value) => value.toMap()),
      'veeva': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva, Map<String, dynamic>>(veeva, (value) => value.toMap()),
      'zendesk': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk, Map<String, dynamic>>(zendesk, (value) => value.toMap()),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentials.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentials(
      amplitude: (() { final guardedValue = map['amplitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customConnector: (() { final guardedValue = map['customConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datadog: (() { final guardedValue = map['datadog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynatrace: (() { final guardedValue = map['dynatrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleAnalytics: (() { final guardedValue = map['googleAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      honeycode: (() { final guardedValue = map['honeycode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inforNexus: (() { final guardedValue = map['inforNexus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      marketo: (() { final guardedValue = map['marketo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redshift: (() { final guardedValue = map['redshift']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforce: (() { final guardedValue = map['salesforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sapoData: (() { final guardedValue = map['sapoData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceNow: (() { final guardedValue = map['serviceNow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singular: (() { final guardedValue = map['singular']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slack: (() { final guardedValue = map['slack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snowflake: (() { final guardedValue = map['snowflake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trendmicro: (() { final guardedValue = map['trendmicro']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      veeva: (() { final guardedValue = map['veeva']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zendesk: (() { final guardedValue = map['zendesk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

