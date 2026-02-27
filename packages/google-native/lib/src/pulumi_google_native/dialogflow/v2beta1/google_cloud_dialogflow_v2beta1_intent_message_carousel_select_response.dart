// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_carousel_select_item_response.dart';

/// The card for presenting a carousel of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse {
  /// Carousel items.
  final List<
          GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse>
      items;

  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse,
        Map<String, dynamic>>(items, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse(
      items: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse>(
          map['items'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
