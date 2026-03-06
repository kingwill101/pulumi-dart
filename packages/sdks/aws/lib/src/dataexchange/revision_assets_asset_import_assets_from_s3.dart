// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_assets_asset_import_assets_from_s3_asset_source.dart';

class RevisionAssetsAssetImportAssetsFromS3 {
  /// A block specifying the source bucket and key for the asset. This block supports the following:
  final pulumi.Input<RevisionAssetsAssetImportAssetsFromS3AssetSource>? assetSource;

  /// Creates a new [RevisionAssetsAssetImportAssetsFromS3].
  /// [assetSource] A block specifying the source bucket and key for the asset. This block supports the following:
  const RevisionAssetsAssetImportAssetsFromS3({
    this.assetSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetSource': ?pulumi.Input.mapOptionalInputValue<RevisionAssetsAssetImportAssetsFromS3AssetSource, Map<String, dynamic>>(assetSource, (value) => value.toMap()),
    };
  }

  factory RevisionAssetsAssetImportAssetsFromS3.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsAssetImportAssetsFromS3(
      assetSource: (() { final guardedValue = map['assetSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RevisionAssetsAssetImportAssetsFromS3AssetSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

