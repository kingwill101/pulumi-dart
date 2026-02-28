// ignore_for_file: unused_element, unnecessary_cast

import 'revision_assets_asset_import_assets_from_s3_asset_source.dart';

class RevisionAssetsAssetImportAssetsFromS3 {
  /// A block specifying the source bucket and key for the asset. This block supports the following:
  final RevisionAssetsAssetImportAssetsFromS3AssetSource? assetSource;

  /// Creates a new [RevisionAssetsAssetImportAssetsFromS3].
  /// [assetSource] A block specifying the source bucket and key for the asset. This block supports the following:
  RevisionAssetsAssetImportAssetsFromS3({
    this.assetSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetSourceValue = assetSource;
    if (assetSourceValue != null) {
      map['assetSource'] = assetSourceValue.toMap();
    }
    return map;
  }

  factory RevisionAssetsAssetImportAssetsFromS3.fromMap(
      Map<String, dynamic> map) {
    return RevisionAssetsAssetImportAssetsFromS3(
      assetSource: map['assetSource'] == null
          ? null
          : RevisionAssetsAssetImportAssetsFromS3AssetSource.fromMap(
              (map['assetSource'] as Map).cast<String, dynamic>()),
    );
  }
}
