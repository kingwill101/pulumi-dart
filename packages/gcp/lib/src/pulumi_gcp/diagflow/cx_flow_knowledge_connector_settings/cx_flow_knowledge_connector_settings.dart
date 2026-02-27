// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_flow_knowledge_connector_settings_data_store_connection/cx_flow_knowledge_connector_settings_data_store_connection.dart';
import '../cx_flow_knowledge_connector_settings_trigger_fulfillment/cx_flow_knowledge_connector_settings_trigger_fulfillment.dart';

class CxFlowKnowledgeConnectorSettings {
  /// Optional. List of related data store connections.
  /// Structure is documented below.
  final List<CxFlowKnowledgeConnectorSettingsDataStoreConnection>?
      dataStoreConnections;

  /// Whether Knowledge Connector is enabled or not.
  final bool? enabled;

  /// The target flow to transition to. Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>.
  /// This field is part of a union field `target`: Only one of `targetPage` or `targetFlow` may be set.
  final String? targetFlow;

  /// The target page to transition to. Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>/pages/<PageID>.
  /// The page must be in the same host flow (the flow that owns this `KnowledgeConnectorSettings`).
  /// This field is part of a union field `target`: Only one of `targetPage` or `targetFlow` may be set.
  final String? targetPage;

  /// The fulfillment to be triggered.
  /// When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter $request.knowledge.answers (contains up to the 5 highest confidence answers) and $request.knowledge.questions (contains the corresponding questions) to construct the fulfillment.
  /// Structure is documented below.
  final CxFlowKnowledgeConnectorSettingsTriggerFulfillment? triggerFulfillment;

  CxFlowKnowledgeConnectorSettings({
    this.dataStoreConnections,
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataStoreConnectionsValue = dataStoreConnections;
    if (dataStoreConnectionsValue != null) {
      map['dataStoreConnections'] = pulumi.Input.encodeList<
              CxFlowKnowledgeConnectorSettingsDataStoreConnection,
              Map<String, dynamic>>(
          dataStoreConnectionsValue, (value) => value.toMap());
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final targetFlowValue = targetFlow;
    if (targetFlowValue != null) {
      map['targetFlow'] = targetFlowValue;
    }
    final targetPageValue = targetPage;
    if (targetPageValue != null) {
      map['targetPage'] = targetPageValue;
    }
    final triggerFulfillmentValue = triggerFulfillment;
    if (triggerFulfillmentValue != null) {
      map['triggerFulfillment'] = triggerFulfillmentValue.toMap();
    }
    return map;
  }

  factory CxFlowKnowledgeConnectorSettings.fromMap(Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettings(
      dataStoreConnections: map['dataStoreConnections'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxFlowKnowledgeConnectorSettingsDataStoreConnection>(
              map['dataStoreConnections'],
              (value) =>
                  CxFlowKnowledgeConnectorSettingsDataStoreConnection.fromMap(
                      (value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      targetFlow:
          map['targetFlow'] == null ? null : map['targetFlow'] as String,
      targetPage:
          map['targetPage'] == null ? null : map['targetPage'] as String,
      triggerFulfillment: map['triggerFulfillment'] == null
          ? null
          : CxFlowKnowledgeConnectorSettingsTriggerFulfillment.fromMap(
              (map['triggerFulfillment'] as Map).cast<String, dynamic>()),
    );
  }
}
