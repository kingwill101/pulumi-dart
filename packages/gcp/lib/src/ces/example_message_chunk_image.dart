// ignore_for_file: unused_element, unnecessary_cast

class ExampleMessageChunkImage {
  /// Raw bytes of the image.
  final String data;

  /// The IANA standard MIME type of the source data.
  /// Supported image types includes:
  /// * image/png
  /// * image/jpeg
  /// * image/webp
  final String mimeType;

  /// Creates a new [ExampleMessageChunkImage].
  /// [data] Raw bytes of the image.
  /// [mimeType] The IANA standard MIME type of the source data.
  ExampleMessageChunkImage({
    required this.data,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['mimeType'] = mimeType;
    return map;
  }

  factory ExampleMessageChunkImage.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkImage(
      data: map['data'] as String,
      mimeType: map['mimeType'] as String,
    );
  }
}
