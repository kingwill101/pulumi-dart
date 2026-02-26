// ignore_for_file: unused_element, unnecessary_cast

/// The image response message.
class GoogleCloudDialogflowV2beta1IntentMessageImage {
  /// A text description of the image to be used for accessibility, e.g., screen readers. Required if image_uri is set for CarouselSelect.
  final String? accessibilityText;

  /// Optional. The public URI to an image file.
  final String? imageUri;

  GoogleCloudDialogflowV2beta1IntentMessageImage({
    this.accessibilityText,
    this.imageUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessibilityTextValue = accessibilityText;
    if (accessibilityTextValue != null) {
      map['accessibilityText'] = accessibilityTextValue;
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageImage(
      accessibilityText: map['accessibilityText'] == null
          ? null
          : map['accessibilityText'] as String,
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
    );
  }
}
