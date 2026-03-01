// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_card_content_rbm_media_height.dart';

/// Rich Business Messaging (RBM) Media displayed in Cards The following media-types are currently supported: Image Types * image/jpeg * image/jpg' * image/gif * image/png Video Types * video/h263 * video/m4v * video/mp4 * video/mpeg * video/mpeg4 * video/webm
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia {
  /// Publicly reachable URI of the file. The RBM platform determines the MIME type of the file from the content-type field in the HTTP headers when the platform fetches the file. The content-type field must be present and accurate in the HTTP response from the URL.
  final String fileUri;

  /// Required for cards with vertical orientation. The height of the media within a rich card with a vertical layout. For a standalone card with horizontal layout, height is not customizable, and this field is ignored.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight?
  height;

  /// Optional. Publicly reachable URI of the thumbnail.If you don't provide a thumbnail URI, the RBM platform displays a blank placeholder thumbnail until the user's device downloads the file. Depending on the user's setting, the file may not download automatically and may require the user to tap a download button.
  final String? thumbnailUri;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia].
  /// [fileUri] Publicly reachable URI of the file. The RBM platform determines the MIME type of the file from the content-type field in the HTTP headers when the platform fetches the file. The content-type field must be present and accurate in the HTTP response from the URL.
  /// [height] Required for cards with vertical orientation. The height of the media within a rich card with a vertical layout. For a standalone card with horizontal layout, height is not customizable, and this field is ignored.
  /// [thumbnailUri] Optional. Publicly reachable URI of the thumbnail.If you don't provide a thumbnail URI, the RBM platform displays a blank placeholder thumbnail until the user's device downloads the file. Depending on the user's setting, the file may not download automatically and may require the user to tap a download button.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia({
    required this.fileUri,
    this.height,
    this.thumbnailUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileUri': fileUri,
      'height': ?height == null ? null : height!.value,
      'thumbnailUri': ?thumbnailUri,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia(
      fileUri: map['fileUri'] as String,
      height: map['height'] == null
          ? null
          : GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight.fromValue(
              map['height'] as String,
            ),
      thumbnailUri: map['thumbnailUri'] == null
          ? null
          : map['thumbnailUri'] as String,
    );
  }
}
