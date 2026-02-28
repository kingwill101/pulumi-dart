// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotExampleMessageChunkImage {
  /// (Output)
  /// Raw bytes of the image.
  final String? data;

  /// (Output)
  /// The IANA standard MIME type of the source data.
  /// Supported image types includes:
  /// * image/png
  /// * image/jpeg
  /// * image/webp
  final String? mimeType;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkImage].
  /// [data] (Output)
  /// [mimeType] (Output)
  AppVersionSnapshotExampleMessageChunkImage({
    this.data,
    this.mimeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    final mimeTypeValue = mimeType;
    if (mimeTypeValue != null) {
      map['mimeType'] = mimeTypeValue;
    }
    return map;
  }

  factory AppVersionSnapshotExampleMessageChunkImage.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunkImage(
      data: map['data'] == null ? null : map['data'] as String,
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
    );
  }
}
