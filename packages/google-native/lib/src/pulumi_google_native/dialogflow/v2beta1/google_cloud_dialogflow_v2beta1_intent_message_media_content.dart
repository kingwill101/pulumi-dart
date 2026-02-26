// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_media_content_media_type.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_media_content_response_media_object.dart';

/// The media content card for Actions on Google.
class GoogleCloudDialogflowV2beta1IntentMessageMediaContent {
  /// List of media objects.
  final List<
          GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>
      mediaObjects;

  /// Optional. What type of media is the content (ie "audio").
  final GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType?
      mediaType;

  GoogleCloudDialogflowV2beta1IntentMessageMediaContent({
    required this.mediaObjects,
    this.mediaType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mediaObjects'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject,
        Map<String, dynamic>>(mediaObjects, (value) => value.toMap());
    final mediaTypeValue = mediaType;
    if (mediaTypeValue != null) {
      map['mediaType'] = mediaTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageMediaContent.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageMediaContent(
      mediaObjects: Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>(
          map['mediaObjects'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
                  .fromMap((value as Map).cast<String, dynamic>())),
      mediaType: map['mediaType'] == null
          ? null
          : GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType
              .fromValue(map['mediaType'] as String),
    );
  }
}
