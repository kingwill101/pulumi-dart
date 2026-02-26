// ignore_for_file: unused_element, unnecessary_cast

/// Specifies how to handle de-identification of image pixels.
class ImageConfigResponse {
  /// Determines how to redact text from image.
  final String textRedactionMode;

  ImageConfigResponse({
    required this.textRedactionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['textRedactionMode'] = textRedactionMode;
    return map;
  }

  factory ImageConfigResponse.fromMap(Map<String, dynamic> map) {
    return ImageConfigResponse(
      textRedactionMode: map['textRedactionMode'] as String,
    );
  }
}
