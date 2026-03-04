// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesAmplitude>?
  amplitude;

  /// Properties that are applied when the custom connector is being used as a source. See Custom Connector Source Properties.
  final pulumi.Input<
    FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector
  >?
  customConnector;

  /// Information that is required for querying Datadog. See Generic Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesDatadog>?
  datadog;

  /// Operation to be performed on the provided Dynatrace source fields. Valid values are `PROJECTION`, `BETWEEN`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesDynatrace>?
  dynatrace;

  /// Operation to be performed on the provided Google Analytics source fields. Valid values are `PROJECTION` and `BETWEEN`.
  final pulumi.Input<
    FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics
  >?
  googleAnalytics;

  /// Information that is required for querying Infor Nexus. See Generic Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesInforNexus>?
  inforNexus;

  /// Information that is required for querying Marketo. See Generic Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesMarketo>?
  marketo;

  /// Information that is required for querying Amazon S3. See S3 Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesS3>? s3;

  /// Information that is required for querying Salesforce. See Salesforce Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesSalesforce>?
  salesforce;

  /// Information that is required for querying SAPOData as a flow source. See SAPO Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesSapoData>?
  sapoData;

  /// Information that is required for querying ServiceNow. See Generic Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesServiceNow>?
  serviceNow;

  /// Information that is required for querying Singular. See Generic Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesSingular>?
  singular;

  /// Information that is required for querying Slack. See Generic Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesSlack>? slack;

  /// Operation to be performed on the provided Trend Micro source fields. Valid values are `PROJECTION`, `EQUAL_TO`, `ADDITION`, `MULTIPLICATION`, `DIVISION`, `SUBTRACTION`, `MASK_ALL`, `MASK_FIRST_N`, `MASK_LAST_N`, `VALIDATE_NON_NULL`, `VALIDATE_NON_ZERO`, `VALIDATE_NON_NEGATIVE`, `VALIDATE_NUMERIC`, and `NO_OP`.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro>?
  trendmicro;

  /// Information that is required for querying Veeva. See Veeva Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesVeeva>? veeva;

  /// Information that is required for querying Zendesk. See Generic Source Properties for more details.
  final pulumi.Input<FlowSourceFlowConfigSourceConnectorPropertiesZendesk>?
  zendesk;

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
      'amplitude':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesAmplitude,
            Map<String, dynamic>
          >(amplitude, (value) => value.toMap()),
      'customConnector':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector,
            Map<String, dynamic>
          >(customConnector, (value) => value.toMap()),
      'datadog':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesDatadog,
            Map<String, dynamic>
          >(datadog, (value) => value.toMap()),
      'dynatrace':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesDynatrace,
            Map<String, dynamic>
          >(dynatrace, (value) => value.toMap()),
      'googleAnalytics':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics,
            Map<String, dynamic>
          >(googleAnalytics, (value) => value.toMap()),
      'inforNexus':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesInforNexus,
            Map<String, dynamic>
          >(inforNexus, (value) => value.toMap()),
      'marketo':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesMarketo,
            Map<String, dynamic>
          >(marketo, (value) => value.toMap()),
      's3':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesS3,
            Map<String, dynamic>
          >(s3, (value) => value.toMap()),
      'salesforce':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesSalesforce,
            Map<String, dynamic>
          >(salesforce, (value) => value.toMap()),
      'sapoData':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesSapoData,
            Map<String, dynamic>
          >(sapoData, (value) => value.toMap()),
      'serviceNow':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesServiceNow,
            Map<String, dynamic>
          >(serviceNow, (value) => value.toMap()),
      'singular':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesSingular,
            Map<String, dynamic>
          >(singular, (value) => value.toMap()),
      'slack':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesSlack,
            Map<String, dynamic>
          >(slack, (value) => value.toMap()),
      'trendmicro':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro,
            Map<String, dynamic>
          >(trendmicro, (value) => value.toMap()),
      'veeva':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesVeeva,
            Map<String, dynamic>
          >(veeva, (value) => value.toMap()),
      'zendesk':
          ?pulumi.Input.mapOptionalInputValue<
            FlowSourceFlowConfigSourceConnectorPropertiesZendesk,
            Map<String, dynamic>
          >(zendesk, (value) => value.toMap()),
    };
  }

  factory FlowSourceFlowConfigSourceConnectorProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorProperties(
      amplitude: (() {
        final guardedValue = map['amplitude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesAmplitude.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customConnector: (() {
        final guardedValue = map['customConnector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesCustomConnector.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      datadog: (() {
        final guardedValue = map['datadog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesDatadog.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dynatrace: (() {
        final guardedValue = map['dynatrace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesDynatrace.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      googleAnalytics: (() {
        final guardedValue = map['googleAnalytics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inforNexus: (() {
        final guardedValue = map['inforNexus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesInforNexus.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      marketo: (() {
        final guardedValue = map['marketo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesMarketo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3: (() {
        final guardedValue = map['s3'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesS3.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      salesforce: (() {
        final guardedValue = map['salesforce'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesSalesforce.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sapoData: (() {
        final guardedValue = map['sapoData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesSapoData.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceNow: (() {
        final guardedValue = map['serviceNow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesServiceNow.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      singular: (() {
        final guardedValue = map['singular'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesSingular.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      slack: (() {
        final guardedValue = map['slack'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesSlack.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      trendmicro: (() {
        final guardedValue = map['trendmicro'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      veeva: (() {
        final guardedValue = map['veeva'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesVeeva.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      zendesk: (() {
        final guardedValue = map['zendesk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowSourceFlowConfigSourceConnectorPropertiesZendesk.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
