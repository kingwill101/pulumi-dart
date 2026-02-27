// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2beta1_intent_message_simple_response_response.dart';

/// The collection of simple response candidates. This message in `QueryResult.fulfillment_messages` and `WebhookResponse.fulfillment_messages` should contain only one `SimpleResponse`.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse {
  /// The list of simple responses.
  final List<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponseResponse>
      simpleResponses;

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse({
    required this.simpleResponses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['simpleResponses'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageSimpleResponseResponse,
        Map<String, dynamic>>(simpleResponses, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse(
      simpleResponses: Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageSimpleResponseResponse>(
          map['simpleResponses'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageSimpleResponseResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
