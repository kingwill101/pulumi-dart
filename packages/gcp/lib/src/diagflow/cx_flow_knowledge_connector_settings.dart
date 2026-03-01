// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_flow_knowledge_connector_settings_data_store_connection.dart';
import 'cx_flow_knowledge_connector_settings_trigger_fulfillment.dart';

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

  /// Creates a new [CxFlowKnowledgeConnectorSettings].
  /// [dataStoreConnections] Optional. List of related data store connections.
  /// [enabled] Whether Knowledge Connector is enabled or not.
  /// [targetFlow] The target flow to transition to. Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>.
  /// [targetPage] The target page to transition to. Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>/pages/<PageID>.
  /// [triggerFulfillment] The fulfillment to be triggered.
  CxFlowKnowledgeConnectorSettings({
    this.dataStoreConnections,
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreConnections': ?dataStoreConnections == null
          ? null
          : pulumi.Input.encodeList<
              CxFlowKnowledgeConnectorSettingsDataStoreConnection,
              Map<String, dynamic>
            >(dataStoreConnections!, (value) => value.toMap()),
      'enabled': ?enabled,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?triggerFulfillment == null
          ? null
          : triggerFulfillment!.toMap(),
    };
  }

  factory CxFlowKnowledgeConnectorSettings.fromMap(Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettings(
      dataStoreConnections: map['dataStoreConnections'] == null
          ? null
          : pulumi.Input.decodeList<
              CxFlowKnowledgeConnectorSettingsDataStoreConnection
            >(
              map['dataStoreConnections'],
              (value) =>
                  CxFlowKnowledgeConnectorSettingsDataStoreConnection.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      targetFlow: map['targetFlow'] == null
          ? null
          : map['targetFlow'] as String,
      targetPage: map['targetPage'] == null
          ? null
          : map['targetPage'] as String,
      triggerFulfillment: map['triggerFulfillment'] == null
          ? null
          : CxFlowKnowledgeConnectorSettingsTriggerFulfillment.fromMap(
              (map['triggerFulfillment'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
