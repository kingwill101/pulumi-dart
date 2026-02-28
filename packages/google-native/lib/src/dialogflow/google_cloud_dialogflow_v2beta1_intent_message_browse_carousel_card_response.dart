// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_browse_carousel_card_item_response.dart';

/// Browse Carousel Card for Actions on Google. https://developers.google.com/actions/assistant/responses#browsing_carousel
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse {
  /// Optional. Settings for displaying the image. Applies to every image in items.
  final String imageDisplayOptions;

  /// List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.
  final List<
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse>
      items;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse].
  /// [imageDisplayOptions] Optional. Settings for displaying the image. Applies to every image in items.
  /// [items] List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse({
    required this.imageDisplayOptions,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageDisplayOptions'] = imageDisplayOptions;
    map['items'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse,
        Map<String, dynamic>>(items, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse(
      imageDisplayOptions: map['imageDisplayOptions'] as String,
      items: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse>(
          map['items'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
