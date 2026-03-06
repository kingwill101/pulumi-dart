// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector>? customConnector;
  /// Properties that are required to query Amazon Connect Customer Profiles. See Customer Profiles Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles>? customerProfiles;
  /// Properties that are required to query Amazon EventBridge. See Generic Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge>? eventBridge;
  /// Properties that are required to query Amazon Honeycode. See Generic Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode>? honeycode;
  final pulumi.Input<Map<String, dynamic>>? lookoutMetrics;
  /// Properties that are required to query Marketo. See Generic Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo>? marketo;
  /// Properties that are required to query Amazon Redshift. See Redshift Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift>? redshift;
  /// Properties that are required to query Amazon S3. See S3 Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesS3>? s3;
  /// Properties that are required to query Salesforce. See Salesforce Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce>? salesforce;
  /// Properties that are required to query SAPOData. See SAPOData Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData>? sapoData;
  /// Properties that are required to query Snowflake. See Snowflake Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake>? snowflake;
  /// Properties that are required to query Upsolver. See Upsolver Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver>? upsolver;
  /// Properties that are required to query Zendesk. See Zendesk Destination Properties for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk>? zendesk;

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
  const FlowDestinationFlowConfigDestinationConnectorProperties({
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
    return <String, dynamic>{
      'customConnector': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector, Map<String, dynamic>>(customConnector, (value) => value.toMap()),
      'customerProfiles': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles, Map<String, dynamic>>(customerProfiles, (value) => value.toMap()),
      'eventBridge': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge, Map<String, dynamic>>(eventBridge, (value) => value.toMap()),
      'honeycode': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode, Map<String, dynamic>>(honeycode, (value) => value.toMap()),
      'lookoutMetrics': ?lookoutMetrics,
      'marketo': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo, Map<String, dynamic>>(marketo, (value) => value.toMap()),
      'redshift': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift, Map<String, dynamic>>(redshift, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
      'salesforce': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce, Map<String, dynamic>>(salesforce, (value) => value.toMap()),
      'sapoData': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData, Map<String, dynamic>>(sapoData, (value) => value.toMap()),
      'snowflake': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake, Map<String, dynamic>>(snowflake, (value) => value.toMap()),
      'upsolver': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver, Map<String, dynamic>>(upsolver, (value) => value.toMap()),
      'zendesk': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk, Map<String, dynamic>>(zendesk, (value) => value.toMap()),
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorProperties.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorProperties(
      customConnector: (() { final guardedValue = map['customConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerProfiles: (() { final guardedValue = map['customerProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventBridge: (() { final guardedValue = map['eventBridge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesEventBridge.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      honeycode: (() { final guardedValue = map['honeycode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lookoutMetrics: (() { final guardedValue = map['lookoutMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      marketo: (() { final guardedValue = map['marketo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesMarketo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redshift: (() { final guardedValue = map['redshift']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforce: (() { final guardedValue = map['salesforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesSalesforce.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sapoData: (() { final guardedValue = map['sapoData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesSapoData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snowflake: (() { final guardedValue = map['snowflake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upsolver: (() { final guardedValue = map['upsolver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zendesk: (() { final guardedValue = map['zendesk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesZendesk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

