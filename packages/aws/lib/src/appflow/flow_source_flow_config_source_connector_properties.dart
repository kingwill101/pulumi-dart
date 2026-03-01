// ignore_for_file: unused_element, unnecessary_cast

import 'flow_source_flow_config_source_connector_properties_amplitude.dart';
import 'flow_source_flow_config_source_connector_properties_custom_connector.dart';
import 'flow_source_flow_config_source_connector_properties_datadog.dart';
import 'flow_source_flow_config_source_connector_properties_dynatrace.dart';
import 'flow_source_flow_config_source_connector_properties_google_analytics.dart';
import 'flow_source_flow_config_source_connector_properties_infor_nexus.dart';
import 'flow_source_flow_config_source_connector_properties_marketo.dart';
import 'flow_source_flow_config_source_connector_properties_s3.dart';
import 'flow_source_flow_config_source_connector_properties_salesforce.dart';
import 'flow_source_flow_config_source_connector_properties_sapo_data.dart';
import 'flow_source_flow_config_source_connector_properties_service_now.dart';
import 'flow_source_flow_config_source_connector_properties_singular.dart';
import 'flow_source_flow_config_source_connector_properties_slack.dart';
import 'flow_source_flow_config_source_connector_properties_trendmicro.dart';
import 'flow_source_flow_config_source_connector_properties_veeva.dart';
import 'flow_source_flow_config_source_connector_properties_zendesk.dart';

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

  /// Creates a new [FlowSourceFlowConfigSourceConnectorProperties].
  /// [amplitude] Information that is required for querying Amplitude. See Generic Source Properties for more details.
  /// [customConnector] Properties that are applied when the custom connector is being used as a source. See Custom Connector Source Properties.
  /// [datadog] Information that is required for querying Datadog. See Generic Source Properties for more details.
  /// [dynatrace] Operation to be performed on the provided Dynatrace source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [googleAnalytics] Operation to be performed on the provided Google Analytics source fields. Valid values are `PROJECTION` and `BETWEEN`.
  /// [inforNexus] Information that is required for querying Infor Nexus. See Generic Source Properties for more details.
  /// [marketo] Information that is required for querying Marketo. See Generic Source Properties for more details.
  /// [s3] Information that is required for querying Amazon S3. See S3 Source Properties for more details.
  /// [salesforce] Information that is required for querying Salesforce. See Salesforce Source Properties for more details.
  /// [sapoData] Information that is required for querying SAPOData as a flow source. See SAPO Source Properties for more details.
  /// [serviceNow] Information that is required for querying ServiceNow. See Generic Source Properties for more details.
  /// [singular] Information that is required for querying Singular. See Generic Source Properties for more details.
  /// [slack] Information that is required for querying Slack. See Generic Source Properties for more details.
  /// [trendmicro] Operation to be performed on the provided Trend Micro source fields. Valid values are `PROJECTION`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  /// [veeva] Information that is required for querying Veeva. See Veeva Source Properties for more details.
  /// [zendesk] Information that is required for querying Zendesk. See Generic Source Properties for more details.
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
    return <String, dynamic>{
      'amplitude': ?amplitude == null ? null : amplitude!.toMap(),
      'customConnector': ?customConnector == null
          ? null
          : customConnector!.toMap(),
      'datadog': ?datadog == null ? null : datadog!.toMap(),
      'dynatrace': ?dynatrace == null ? null : dynatrace!.toMap(),
      'googleAnalytics': ?googleAnalytics == null
          ? null
          : googleAnalytics!.toMap(),
      'inforNexus': ?inforNexus == null ? null : inforNexus!.toMap(),
      'marketo': ?marketo == null ? null : marketo!.toMap(),
      's3': ?s3 == null ? null : s3!.toMap(),
      'salesforce': ?salesforce == null ? null : salesforce!.toMap(),
      'sapoData': ?sapoData == null ? null : sapoData!.toMap(),
      'serviceNow': ?serviceNow == null ? null : serviceNow!.toMap(),
      'singular': ?singular == null ? null : singular!.toMap(),
      'slack': ?slack == null ? null : slack!.toMap(),
      'trendmicro': ?trendmicro == null ? null : trendmicro!.toMap(),
      'veeva': ?veeva == null ? null : veeva!.toMap(),
      'zendesk': ?zendesk == null ? null : zendesk!.toMap(),
    };
  }

  factory FlowSourceFlowConfigSourceConnectorProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorProperties(
      amplitude: map['amplitude'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesAmplitude.fromMap(
              (map['amplitude'] as Map).cast<String, dynamic>(),
            ),
      customConnector: map['customConnector'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector.fromMap(
              (map['customConnector'] as Map).cast<String, dynamic>(),
            ),
      datadog: map['datadog'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesDatadog.fromMap(
              (map['datadog'] as Map).cast<String, dynamic>(),
            ),
      dynatrace: map['dynatrace'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesDynatrace.fromMap(
              (map['dynatrace'] as Map).cast<String, dynamic>(),
            ),
      googleAnalytics: map['googleAnalytics'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics.fromMap(
              (map['googleAnalytics'] as Map).cast<String, dynamic>(),
            ),
      inforNexus: map['inforNexus'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesInforNexus.fromMap(
              (map['inforNexus'] as Map).cast<String, dynamic>(),
            ),
      marketo: map['marketo'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesMarketo.fromMap(
              (map['marketo'] as Map).cast<String, dynamic>(),
            ),
      s3: map['s3'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>(),
            ),
      salesforce: map['salesforce'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSalesforce.fromMap(
              (map['salesforce'] as Map).cast<String, dynamic>(),
            ),
      sapoData: map['sapoData'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSapoData.fromMap(
              (map['sapoData'] as Map).cast<String, dynamic>(),
            ),
      serviceNow: map['serviceNow'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesServiceNow.fromMap(
              (map['serviceNow'] as Map).cast<String, dynamic>(),
            ),
      singular: map['singular'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSingular.fromMap(
              (map['singular'] as Map).cast<String, dynamic>(),
            ),
      slack: map['slack'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesSlack.fromMap(
              (map['slack'] as Map).cast<String, dynamic>(),
            ),
      trendmicro: map['trendmicro'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro.fromMap(
              (map['trendmicro'] as Map).cast<String, dynamic>(),
            ),
      veeva: map['veeva'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesVeeva.fromMap(
              (map['veeva'] as Map).cast<String, dynamic>(),
            ),
      zendesk: map['zendesk'] == null
          ? null
          : FlowSourceFlowConfigSourceConnectorPropertiesZendesk.fromMap(
              (map['zendesk'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
