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
      amplitude: map['amplitude'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude.fromMap((map['amplitude'] as Map).cast<String, dynamic>())).input(),
      customConnector: map['customConnector'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector.fromMap((map['customConnector'] as Map).cast<String, dynamic>())).input(),
      datadog: map['datadog'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>())).input(),
      dynatrace: map['dynatrace'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsDynatrace.fromMap((map['dynatrace'] as Map).cast<String, dynamic>())).input(),
      googleAnalytics: map['googleAnalytics'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics.fromMap((map['googleAnalytics'] as Map).cast<String, dynamic>())).input(),
      honeycode: map['honeycode'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode.fromMap((map['honeycode'] as Map).cast<String, dynamic>())).input(),
      inforNexus: map['inforNexus'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus.fromMap((map['inforNexus'] as Map).cast<String, dynamic>())).input(),
      marketo: map['marketo'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo.fromMap((map['marketo'] as Map).cast<String, dynamic>())).input(),
      redshift: map['redshift'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift.fromMap((map['redshift'] as Map).cast<String, dynamic>())).input(),
      salesforce: map['salesforce'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce.fromMap((map['salesforce'] as Map).cast<String, dynamic>())).input(),
      sapoData: map['sapoData'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData.fromMap((map['sapoData'] as Map).cast<String, dynamic>())).input(),
      serviceNow: map['serviceNow'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow.fromMap((map['serviceNow'] as Map).cast<String, dynamic>())).input(),
      singular: map['singular'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSingular.fromMap((map['singular'] as Map).cast<String, dynamic>())).input(),
      slack: map['slack'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack.fromMap((map['slack'] as Map).cast<String, dynamic>())).input(),
      snowflake: map['snowflake'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake.fromMap((map['snowflake'] as Map).cast<String, dynamic>())).input(),
      trendmicro: map['trendmicro'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsTrendmicro.fromMap((map['trendmicro'] as Map).cast<String, dynamic>())).input(),
      veeva: map['veeva'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva.fromMap((map['veeva'] as Map).cast<String, dynamic>())).input(),
      zendesk: map['zendesk'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk.fromMap((map['zendesk'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

