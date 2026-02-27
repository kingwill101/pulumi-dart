// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggestion.dart';

/// Rich Business Messaging (RBM) text response with suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageRbmText {
  /// Optional. One or more suggestions to show to the user.
  final List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>?
      rbmSuggestion;

  /// Text sent and displayed to the user.
  final String text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmText({
    this.rbmSuggestion,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rbmSuggestionValue = rbmSuggestion;
    if (rbmSuggestionValue != null) {
      map['rbmSuggestion'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion,
          Map<String, dynamic>>(rbmSuggestionValue, (value) => value.toMap());
    }
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmText(
      rbmSuggestion: map['rbmSuggestion'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>(
              map['rbmSuggestion'],
              (value) => GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
                  .fromMap((value as Map).cast<String, dynamic>())),
      text: map['text'] as String,
    );
  }
}
