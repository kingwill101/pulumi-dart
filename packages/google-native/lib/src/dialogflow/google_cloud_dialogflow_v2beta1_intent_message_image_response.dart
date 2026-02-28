// ignore_for_file: unused_element, unnecessary_cast

/// The image response message.
class GoogleCloudDialogflowV2beta1IntentMessageImageResponse {
  /// A text description of the image to be used for accessibility, e.g., screen readers. Required if image_uri is set for CarouselSelect.
  final String accessibilityText;

  /// Optional. The public URI to an image file.
  final String imageUri;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageImageResponse].
  /// [accessibilityText] A text description of the image to be used for accessibility, e.g., screen readers. Required if image_uri is set for CarouselSelect.
  /// [imageUri] Optional. The public URI to an image file.
  GoogleCloudDialogflowV2beta1IntentMessageImageResponse({
    required this.accessibilityText,
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessibilityText'] = accessibilityText;
    map['imageUri'] = imageUri;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageImageResponse(
      accessibilityText: map['accessibilityText'] as String,
      imageUri: map['imageUri'] as String,
    );
  }
}
