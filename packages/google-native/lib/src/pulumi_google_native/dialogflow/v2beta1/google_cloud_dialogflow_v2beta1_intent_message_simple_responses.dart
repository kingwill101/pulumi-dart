// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_simple_response.dart';

/// The collection of simple response candidates. This message in `QueryResult.fulfillment_messages` and `WebhookResponse.fulfillment_messages` should contain only one `SimpleResponse`.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses {
  /// The list of simple responses.
  final List<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>
      simpleResponses;

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses({
    required this.simpleResponses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['simpleResponses'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse,
        Map<String, dynamic>>(simpleResponses, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses(
      simpleResponses: Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>(
          map['simpleResponses'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
