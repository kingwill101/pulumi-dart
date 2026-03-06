// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RevisionAssetsAssetImportAssetsFromSignedUrl {
  /// The name of the file to import.
  final pulumi.Input<String> filename;

  /// Creates a new [RevisionAssetsAssetImportAssetsFromSignedUrl].
  /// [filename] The name of the file to import.
  const RevisionAssetsAssetImportAssetsFromSignedUrl({
    required this.filename,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filename': filename,
    };
  }

  factory RevisionAssetsAssetImportAssetsFromSignedUrl.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsAssetImportAssetsFromSignedUrl(
      filename: pulumi.Input.fromValue(map['filename'] as String),
    );
  }
}

