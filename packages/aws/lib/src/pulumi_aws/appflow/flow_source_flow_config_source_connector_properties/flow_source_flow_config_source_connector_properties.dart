// ignore_for_file: unused_element, unnecessary_cast

import '../flow_source_flow_config_source_connector_properties_amplitude/flow_source_flow_config_source_connector_properties_amplitude.dart';
import '../flow_source_flow_config_source_connector_properties_custom_connector/flow_source_flow_config_source_connector_properties_custom_connector.dart';
import '../flow_source_flow_config_source_connector_properties_datadog/flow_source_flow_config_source_connector_properties_datadog.dart';
import '../flow_source_flow_config_source_connector_properties_dynatrace/flow_source_flow_config_source_connector_properties_dynatrace.dart';
import '../flow_source_flow_config_source_connector_properties_google_analytics/flow_source_flow_config_source_connector_properties_google_analytics.dart';
import '../flow_source_flow_config_source_connector_properties_infor_nexus/flow_source_flow_config_source_connector_properties_infor_nexus.dart';
import '../flow_source_flow_config_source_connector_properties_marketo/flow_source_flow_config_source_connector_properties_marketo.dart';
import '../flow_source_flow_config_source_connector_properties_s3/flow_source_flow_config_source_connector_properties_s3.dart';
import '../flow_source_flow_config_source_connector_properties_salesforce/flow_source_flow_config_source_connector_properties_salesforce.dart';
import '../flow_source_flow_config_source_connector_properties_sapo_data/flow_source_flow_config_source_connector_properties_sapo_data.dart';
import '../flow_source_flow_config_source_connector_properties_service_now/flow_source_flow_config_source_connector_properties_service_now.dart';
import '../flow_source_flow_config_source_connector_properties_singular/flow_source_flow_config_source_connector_properties_singular.dart';
import '../flow_source_flow_config_source_connector_properties_slack/flow_source_flow_config_source_connector_properties_slack.dart';
import '../flow_source_flow_config_source_connector_properties_trendmicro/flow_source_flow_config_source_connector_properties_trendmicro.dart';
import '../flow_source_flow_config_source_connector_properties_veeva/flow_source_flow_config_source_connector_properties_veeva.dart';
import '../flow_source_flow_config_source_connector_properties_zendesk/flow_source_flow_config_source_connector_properties_zendesk.dart';

class FlowSourceFlowConfigSourceConnectorProperties {
  /// Information that is required for querying Amplitude. See Generic Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesAmplitude? amplitude;

  /// Properties that are applied when the custom connector is being used as a source. See Custom Connector Source Properties.
  final FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector?
      customConnector;

  /// Information that is required for querying Datadog. See Generic Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesDatadog? datadog;

  /// Operation to be performed on the provided Dynatrace source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final FlowSourceFlowConfigSourceConnectorPropertiesDynatrace? dynatrace;

  /// Operation to be performed on the provided Google Analytics source fields. Valid values are `PROJECTION` and `BETWEEN`.
  final FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics?
      googleAnalytics;

  /// Information that is required for querying Infor Nexus. See Generic Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesInforNexus? inforNexus;

  /// Information that is required for querying Marketo. See Generic Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesMarketo? marketo;

  /// Information that is required for querying Amazon S3. See S3 Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesS3? s3;

  /// Information that is required for querying Salesforce. See Salesforce Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesSalesforce? salesforce;

  /// Information that is required for querying SAPOData as a flow source. See SAPO Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesSapoData? sapoData;

  /// Information that is required for querying ServiceNow. See Generic Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesServiceNow? serviceNow;

  /// Information that is required for querying Singular. See Generic Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesSingular? singular;

  /// Information that is required for querying Slack. See Generic Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesSlack? slack;

  /// Operation to be performed on the provided Trend Micro source fields. Valid values are `PROJECTION`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro? trendmicro;

  /// Information that is required for querying Veeva. See Veeva Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesVeeva? veeva;

  /// Information that is required for querying Zendesk. See Generic Source Properties for more details.
  final FlowSourceFlowConfigSourceConnectorPropertiesZendesk? zendesk;

  FlowSourceFlowConfigSourceConnectorProperties({
    this.amplitude,
    this.customConnector,
    this.datadog,
    this.dynatrace,
    this.googleAnalytics,
    this.inforNexus,
    this.marketo,
    this.s3,
    this.salesforce,
    this.sapoData,
    this.serviceNow,
    this.singular,
    this.slack,
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
    final inforNexusValue = inforNexus;
    if (inforNexusValue != null) {
      map['inforNexus'] = inforNexusValue.toMap();
    }
    final marketoValue = marketo;
    if (marketoValue != null) {
      map['marketo'] = marketoValue.toMap();
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
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

  factory FlowSourceFlowConfigSourceConnectorProperties.fromMap(
      Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorProperties(
      amplitude: map['amplitude'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesAmplitude.fromMap(
              (map['amplitude'] as Map).cast<String, dynamic>()),
      customConnector: map['customConnector'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector
              .fromMap((map['customConnector'] as Map).cast<String, dynamic>()),
      datadog: map['datadog'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesDatadog.fromMap(
              (map['datadog'] as Map).cast<String, dynamic>()),
      dynatrace: map['dynatrace'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesDynatrace.fromMap(
              (map['dynatrace'] as Map).cast<String, dynamic>()),
      googleAnalytics: map['googleAnalytics'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics
              .fromMap((map['googleAnalytics'] as Map).cast<String, dynamic>()),
      inforNexus: map['inforNexus'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesInforNexus.fromMap(
              (map['inforNexus'] as Map).cast<String, dynamic>()),
      marketo: map['marketo'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesMarketo.fromMap(
              (map['marketo'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
      salesforce: map['salesforce'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSalesforce.fromMap(
              (map['salesforce'] as Map).cast<String, dynamic>()),
      sapoData: map['sapoData'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSapoData.fromMap(
              (map['sapoData'] as Map).cast<String, dynamic>()),
      serviceNow: map['serviceNow'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesServiceNow.fromMap(
              (map['serviceNow'] as Map).cast<String, dynamic>()),
      singular: map['singular'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSingular.fromMap(
              (map['singular'] as Map).cast<String, dynamic>()),
      slack: map['slack'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSlack.fromMap(
              (map['slack'] as Map).cast<String, dynamic>()),
      trendmicro: map['trendmicro'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro.fromMap(
              (map['trendmicro'] as Map).cast<String, dynamic>()),
      veeva: map['veeva'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesVeeva.fromMap(
              (map['veeva'] as Map).cast<String, dynamic>()),
      zendesk: map['zendesk'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesZendesk.fromMap(
              (map['zendesk'] as Map).cast<String, dynamic>()),
    );
  }
}
