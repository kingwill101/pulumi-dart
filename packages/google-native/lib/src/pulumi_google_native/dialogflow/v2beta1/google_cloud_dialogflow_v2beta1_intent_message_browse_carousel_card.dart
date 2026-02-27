// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_browse_carousel_card_item.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_image_display_options.dart';

/// Browse Carousel Card for Actions on Google. https://developers.google.com/actions/assistant/responses#browsing_carousel
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard {
  /// Optional. Settings for displaying the image. Applies to every image in items.
  final GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions?
      imageDisplayOptions;

  /// List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.
  final List<
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>
      items;

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard({
    this.imageDisplayOptions,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageDisplayOptionsValue = imageDisplayOptions;
    if (imageDisplayOptionsValue != null) {
      map['imageDisplayOptions'] = imageDisplayOptionsValue.value;
    }
    map['items'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem,
        Map<String, dynamic>>(items, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard(
      imageDisplayOptions: map['imageDisplayOptions'] == null
          ? null
          : GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions
              .fromValue(map['imageDisplayOptions'] as String),
      items: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>(
          map['items'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
