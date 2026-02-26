// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2_intent_message_simple_response_response.dart';

/// The collection of simple response candidates. This message in `QueryResult.fulfillment_messages` and `WebhookResponse.fulfillment_messages` should contain only one `SimpleResponse`.
class GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse {
  /// The list of simple responses.
  final List<GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse>
      simpleResponses;

  GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse({
    required this.simpleResponses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['simpleResponses'] = Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse,
        Map<String, dynamic>>(simpleResponses, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse(
      simpleResponses: Input.decodeList<
              GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse>(
          map['simpleResponses'],
          (value) => GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
