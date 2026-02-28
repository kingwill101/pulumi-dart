// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_carousel_select_item.dart';

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2IntentMessageCarouselSelect {
  /// Carousel items.
  final List<GoogleCloudDialogflowV2IntentMessageCarouselSelectItem> items;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCarouselSelect].
  /// [items] Carousel items.
  GoogleCloudDialogflowV2IntentMessageCarouselSelect({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageCarouselSelectItem,
        Map<String, dynamic>>(items, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageCarouselSelect(
      items: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>(
          map['items'],
          (value) =>
              GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
