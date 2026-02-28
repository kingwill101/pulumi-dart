// ignore_for_file: unused_element, unnecessary_cast

class RevisionAssetsAssetImportAssetsFromSignedUrl {
  /// The name of the file to import.
  final String filename;

  /// Creates a new [RevisionAssetsAssetImportAssetsFromSignedUrl].
  /// [filename] The name of the file to import.
  RevisionAssetsAssetImportAssetsFromSignedUrl({
    required this.filename,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filename'] = filename;
    return map;
  }

  factory RevisionAssetsAssetImportAssetsFromSignedUrl.fromMap(
      Map<String, dynamic> map) {
    return RevisionAssetsAssetImportAssetsFromSignedUrl(
      filename: map['filename'] as String,
    );
  }
}
