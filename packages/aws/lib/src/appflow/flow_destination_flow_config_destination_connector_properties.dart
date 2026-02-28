// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_custom_connector.dart';
import 'flow_destination_flow_config_destination_connector_properties_customer_profiles.dart';
import 'flow_destination_flow_config_destination_connector_properties_event_bridge.dart';
import 'flow_destination_flow_config_destination_connector_properties_honeycode.dart';
import 'flow_destination_flow_config_destination_connector_properties_marketo.dart';
import 'flow_destination_flow_config_destination_connector_properties_redshift.dart';
import 'flow_destination_flow_config_destination_connector_properties_s3.dart';
import 'flow_destination_flow_config_destination_connector_properties_salesforce.dart';
import 'flow_destination_flow_config_destination_connector_properties_sapo_data.dart';
import 'flow_destination_flow_config_destination_connector_properties_snowflake.dart';
import 'flow_destination_flow_config_destination_connector_properties_upsolver.dart';
import 'flow_destination_flow_config_destination_connector_properties_zendesk.dart';

class FlowDestinationFlowConfigDestinationConnectorProperties {
  /// Properties that are required to query the custom Connector. See Custom Connector Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector?
      customConnector;

  /// Properties that are required to query Amazon Connect Customer Profiles. See Customer Profiles Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles?
      customerProfiles;

  /// Properties that are required to query Amazon EventBridge. See Generic Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge?
      eventBridge;

  /// Properties that are required to query Amazon Honeycode. See Generic Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode?
      honeycode;
  final Map<String, dynamic>? lookoutMetrics;

  /// Properties that are required to query Marketo. See Generic Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo? marketo;

  /// Properties that are required to query Amazon Redshift. See Redshift Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift?
      redshift;

  /// Properties that are required to query Amazon S3. See S3 Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesS3? s3;

  /// Properties that are required to query Salesforce. See Salesforce Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce?
      salesforce;

  /// Properties that are required to query SAPOData. See SAPOData Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData?
      sapoData;

  /// Properties that are required to query Snowflake. See Snowflake Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake?
      snowflake;

  /// Properties that are required to query Upsolver. See Upsolver Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver?
      upsolver;

  /// Properties that are required to query Zendesk. See Zendesk Destination Properties for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk? zendesk;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorProperties].
  /// [customConnector] Properties that are required to query the custom Connector. See Custom Connector Destination Properties for more details.
  /// [customerProfiles] Properties that are required to query Amazon Connect Customer Profiles. See Customer Profiles Destination Properties for more details.
  /// [eventBridge] Properties that are required to query Amazon EventBridge. See Generic Destination Properties for more details.
  /// [honeycode] Properties that are required to query Amazon Honeycode. See Generic Destination Properties for more details.
  /// [lookoutMetrics] Optional.
  /// [marketo] Properties that are required to query Marketo. See Generic Destination Properties for more details.
  /// [redshift] Properties that are required to query Amazon Redshift. See Redshift Destination Properties for more details.
  /// [s3] Properties that are required to query Amazon S3. See S3 Destination Properties for more details.
  /// [salesforce] Properties that are required to query Salesforce. See Salesforce Destination Properties for more details.
  /// [sapoData] Properties that are required to query SAPOData. See SAPOData Destination Properties for more details.
  /// [snowflake] Properties that are required to query Snowflake. See Snowflake Destination Properties for more details.
  /// [upsolver] Properties that are required to query Upsolver. See Upsolver Destination Properties for more details.
  /// [zendesk] Properties that are required to query Zendesk. See Zendesk Destination Properties for more details.
  FlowDestinationFlowConfigDestinationConnectorProperties({
    this.customConnector,
    this.customerProfiles,
    this.eventBridge,
    this.honeycode,
    this.lookoutMetrics,
    this.marketo,
    this.redshift,
    this.s3,
    this.salesforce,
    this.sapoData,
    this.snowflake,
    this.upsolver,
    this.zendesk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customConnectorValue = customConnector;
    if (customConnectorValue != null) {
      map['customConnector'] = customConnectorValue.toMap();
    }
    final customerProfilesValue = customerProfiles;
    if (customerProfilesValue != null) {
      map['customerProfiles'] = customerProfilesValue.toMap();
    }
    final eventBridgeValue = eventBridge;
    if (eventBridgeValue != null) {
      map['eventBridge'] = eventBridgeValue.toMap();
    }
    final honeycodeValue = honeycode;
    if (honeycodeValue != null) {
      map['honeycode'] = honeycodeValue.toMap();
    }
    final lookoutMetricsValue = lookoutMetrics;
    if (lookoutMetricsValue != null) {
      map['lookoutMetrics'] = lookoutMetricsValue;
    }
    final marketoValue = marketo;
    if (marketoValue != null) {
      map['marketo'] = marketoValue.toMap();
    }
    final redshiftValue = redshift;
    if (redshiftValue != null) {
      map['redshift'] = redshiftValue.toMap();
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
    final snowflakeValue = snowflake;
    if (snowflakeValue != null) {
      map['snowflake'] = snowflakeValue.toMap();
    }
    final upsolverValue = upsolver;
    if (upsolverValue != null) {
      map['upsolver'] = upsolverValue.toMap();
    }
    final zendeskValue = zendesk;
    if (zendeskValue != null) {
      map['zendesk'] = zendeskValue.toMap();
    }
    return map;
  }

  factory FlowDestinationFlowConfigDestinationConnectorProperties.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorProperties(
      customConnector: map['customConnector'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector
              .fromMap((map['customConnector'] as Map).cast<String, dynamic>()),
      customerProfiles: map['customerProfiles'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles
              .fromMap(
                  (map['customerProfiles'] as Map).cast<String, dynamic>()),
      eventBridge: map['eventBridge'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge
              .fromMap((map['eventBridge'] as Map).cast<String, dynamic>()),
      honeycode: map['honeycode'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode
              .fromMap((map['honeycode'] as Map).cast<String, dynamic>()),
      lookoutMetrics: map['lookoutMetrics'] == null
          ? null
          : (map['lookoutMetrics'] as Map).cast<String, dynamic>(),
      marketo: map['marketo'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo
              .fromMap((map['marketo'] as Map).cast<String, dynamic>()),
      redshift: map['redshift'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift
              .fromMap((map['redshift'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
      salesforce: map['salesforce'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce
              .fromMap((map['salesforce'] as Map).cast<String, dynamic>()),
      sapoData: map['sapoData'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData
              .fromMap((map['sapoData'] as Map).cast<String, dynamic>()),
      snowflake: map['snowflake'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake
              .fromMap((map['snowflake'] as Map).cast<String, dynamic>()),
      upsolver: map['upsolver'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver
              .fromMap((map['upsolver'] as Map).cast<String, dynamic>()),
      zendesk: map['zendesk'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk
              .fromMap((map['zendesk'] as Map).cast<String, dynamic>()),
    );
  }
}
