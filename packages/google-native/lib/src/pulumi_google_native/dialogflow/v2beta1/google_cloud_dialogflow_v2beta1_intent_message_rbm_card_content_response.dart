// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_card_content_rbm_media_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggestion_response.dart';

/// Rich Business Messaging (RBM) Card content
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse {
  /// Optional. Description of the card (at most 2000 bytes). At least one of the title, description or media must be set.
  final String description;

  /// Optional. However at least one of the title, description or media must be set. Media (image, GIF or a video) to include in the card.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse
      media;

  /// Optional. List of suggestions to include in the card.
  final List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse>
      suggestions;

  /// Optional. Title of the card (at most 200 bytes). At least one of the title, description or media must be set.
  final String title;

  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse({
    required this.description,
    required this.media,
    required this.suggestions,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['media'] = media.toMap();
    map['suggestions'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse,
        Map<String, dynamic>>(suggestions, (value) => value.toMap());
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse(
      description: map['description'] as String,
      media:
          GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse
              .fromMap((map['media'] as Map).cast<String, dynamic>()),
      suggestions: Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse>(
          map['suggestions'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      title: map['title'] as String,
    );
  }
}
