// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getImageUploadUrlForData.
class GetImageUploadUrlForDataResult {
  /// Content URL for the image blob.
  final String? contentUrl;

  /// Whether image exists already.
  final bool? imageExists;

  /// Relative path of the image.
  final String? relativePath;

  /// Creates a new [GetImageUploadUrlForDataResult].
  /// [contentUrl] Content URL for the image blob.
  /// [imageExists] Whether image exists already.
  /// [relativePath] Relative path of the image.
  GetImageUploadUrlForDataResult({
    this.contentUrl,
    this.imageExists,
    this.relativePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentUrl': ?contentUrl,
      'imageExists': ?imageExists,
      'relativePath': ?relativePath,
    };
  }

  factory GetImageUploadUrlForDataResult.fromMap(Map<String, dynamic> map) {
    return GetImageUploadUrlForDataResult(
      contentUrl: (() {
        final guardedValue = map['contentUrl'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      imageExists: (() {
        final guardedValue = map['imageExists'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      relativePath: (() {
        final guardedValue = map['relativePath'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
