// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_carousel_select_item.dart';

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect {
  /// Carousel items.
  final List<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem> items;

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem,
        Map<String, dynamic>>(items, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect(
      items: Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>(
          map['items'],
          (value) => GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
