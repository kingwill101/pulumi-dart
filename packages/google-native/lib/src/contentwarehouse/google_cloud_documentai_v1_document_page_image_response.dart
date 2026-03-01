// ignore_for_file: unused_element, unnecessary_cast

/// Rendered image contents for this page.
class GoogleCloudDocumentaiV1DocumentPageImageResponse {
  /// Raw byte content of the image.
  final String content;

  /// Height of the image in pixels.
  final int height;

  /// Encoding [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml) for the image.
  final String mimeType;

  /// Width of the image in pixels.
  final int width;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageImageResponse].
  /// [content] Raw byte content of the image.
  /// [height] Height of the image in pixels.
  /// [mimeType] Encoding [media type (MIME type)](https://www.iana.org/assignments/media-types/media-types.xhtml) for the image.
  /// [width] Width of the image in pixels.
  GoogleCloudDocumentaiV1DocumentPageImageResponse({
    required this.content,
    required this.height,
    required this.mimeType,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'height': height,
      'mimeType': mimeType,
      'width': width,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageImageResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageImageResponse(
      content: map['content'] as String,
      height: map['height'] as int,
      mimeType: map['mimeType'] as String,
      width: map['width'] as int,
    );
  }
}
