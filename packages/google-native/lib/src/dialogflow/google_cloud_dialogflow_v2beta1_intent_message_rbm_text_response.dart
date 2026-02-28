// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggestion_response.dart';

/// Rich Business Messaging (RBM) text response with suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse {
  /// Optional. One or more suggestions to show to the user.
  final List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse>
      rbmSuggestion;

  /// Text sent and displayed to the user.
  final String text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse].
  /// [rbmSuggestion] Optional. One or more suggestions to show to the user.
  /// [text] Text sent and displayed to the user.
  GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse({
    required this.rbmSuggestion,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rbmSuggestion'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse,
        Map<String, dynamic>>(rbmSuggestion, (value) => value.toMap());
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse(
      rbmSuggestion: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse>(
          map['rbmSuggestion'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      text: map['text'] as String,
    );
  }
}
