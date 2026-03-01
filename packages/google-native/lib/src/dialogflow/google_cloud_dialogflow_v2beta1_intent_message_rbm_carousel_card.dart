// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_card_content.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_carousel_card_card_width.dart';

/// Carousel Rich Business Messaging (RBM) rich card. Rich cards allow you to respond to users with more vivid content, e.g. with media and suggestions. If you want to show a single card with more control over the layout, please use RbmStandaloneCard instead.
class GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard {
  /// The cards in the carousel. A carousel must have at least 2 cards and at most 10.
  final List<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>
  cardContents;

  /// The width of the cards in the carousel.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth
  cardWidth;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard].
  /// [cardContents] The cards in the carousel. A carousel must have at least 2 cards and at most 10.
  /// [cardWidth] The width of the cards in the carousel.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard({
    required this.cardContents,
    required this.cardWidth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardContents':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent,
            Map<String, dynamic>
          >(cardContents, (value) => value.toMap()),
      'cardWidth': cardWidth.value,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard(
      cardContents:
          pulumi.Input.decodeList<
            GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
          >(
            map['cardContents'],
            (value) =>
                GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      cardWidth:
          GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth.fromValue(
            map['cardWidth'] as String,
          ),
    );
  }
}
