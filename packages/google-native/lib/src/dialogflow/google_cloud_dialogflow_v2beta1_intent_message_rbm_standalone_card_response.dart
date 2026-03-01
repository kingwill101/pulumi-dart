// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_card_content_response.dart';

/// Standalone Rich Business Messaging (RBM) rich card. Rich cards allow you to respond to users with more vivid content, e.g. with media and suggestions. You can group multiple rich cards into one using RbmCarouselCard but carousel cards will give you less control over the card layout.
class GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse {
  /// Card content.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse
  cardContent;

  /// Orientation of the card.
  final String cardOrientation;

  /// Required if orientation is horizontal. Image preview alignment for standalone cards with horizontal layout.
  final String thumbnailImageAlignment;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse].
  /// [cardContent] Card content.
  /// [cardOrientation] Orientation of the card.
  /// [thumbnailImageAlignment] Required if orientation is horizontal. Image preview alignment for standalone cards with horizontal layout.
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse({
    required this.cardContent,
    required this.cardOrientation,
    required this.thumbnailImageAlignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardContent': cardContent.toMap(),
      'cardOrientation': cardOrientation,
      'thumbnailImageAlignment': thumbnailImageAlignment,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse(
      cardContent:
          GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse.fromMap(
            (map['cardContent'] as Map).cast<String, dynamic>(),
          ),
      cardOrientation: map['cardOrientation'] as String,
      thumbnailImageAlignment: map['thumbnailImageAlignment'] as String,
    );
  }
}
