// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3beta1_data_store_connection_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_response.dart';

/// The Knowledge Connector settings for this page or flow. This includes information such as the attached Knowledge Bases, and the way to execute fulfillment.
class GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse {
  /// Optional. List of related data store connections.
  final List<GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse>
      dataStoreConnections;

  /// Whether Knowledge Connector is enabled or not.
  final bool enabled;

  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final String targetFlow;

  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final String targetPage;

  /// The fulfillment to be triggered. When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter `$request.knowledge.answers` (contains up to the 5 highest confidence answers) and `$request.knowledge.questions` (contains the corresponding questions) to construct the fulfillment.
  final GoogleCloudDialogflowCxV3beta1FulfillmentResponse triggerFulfillment;

  GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse({
    required this.dataStoreConnections,
    required this.enabled,
    required this.targetFlow,
    required this.targetPage,
    required this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataStoreConnections'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse,
        Map<String, dynamic>>(dataStoreConnections, (value) => value.toMap());
    map['enabled'] = enabled;
    map['targetFlow'] = targetFlow;
    map['targetPage'] = targetPage;
    map['triggerFulfillment'] = triggerFulfillment.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse(
      dataStoreConnections: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse>(
          map['dataStoreConnections'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      targetFlow: map['targetFlow'] as String,
      targetPage: map['targetPage'] as String,
      triggerFulfillment:
          GoogleCloudDialogflowCxV3beta1FulfillmentResponse.fromMap(
              (map['triggerFulfillment'] as Map).cast<String, dynamic>()),
    );
  }
}
