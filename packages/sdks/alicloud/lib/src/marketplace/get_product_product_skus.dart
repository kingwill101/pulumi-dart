// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_product_skus_image.dart';
import 'get_product_product_skus_package_version.dart';

class GetProductProductSkus {
  /// The list of custom ECS images, Each element contains the following attributes:
  final pulumi.Input<List<GetProductProductSkusImage>> images;

  /// The list of package version details of this product sku, Each element contains the following attributes:
  final pulumi.Input<List<GetProductProductSkusPackageVersion>> packageVersions;

  /// The sku code of this product sku.
  final pulumi.Input<String> skuCode;

  /// The sku name of this product sku.
  final pulumi.Input<String> skuName;

  /// Creates a new [GetProductProductSkus].
  /// [images] The list of custom ECS images, Each element contains the following attributes:
  /// [packageVersions] The list of package version details of this product sku, Each element contains the following attributes:
  /// [skuCode] The sku code of this product sku.
  /// [skuName] The sku name of this product sku.
  GetProductProductSkus({
    required this.images,
    required this.packageVersions,
    required this.skuCode,
    required this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images':
          pulumi.Input.mapInputValue<
            List<GetProductProductSkusImage>,
            List<Map<String, dynamic>>
          >(
            images,
            (value) =>
                pulumi.Input.encodeList<
                  GetProductProductSkusImage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'packageVersions':
          pulumi.Input.mapInputValue<
            List<GetProductProductSkusPackageVersion>,
            List<Map<String, dynamic>>
          >(
            packageVersions,
            (value) =>
                pulumi.Input.encodeList<
                  GetProductProductSkusPackageVersion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'skuCode': skuCode,
      'skuName': skuName,
    };
  }

  factory GetProductProductSkus.fromMap(Map<String, dynamic> map) {
    return GetProductProductSkus(
      images: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetProductProductSkusImage>(
          map['images']!,
          (value) => GetProductProductSkusImage.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      packageVersions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetProductProductSkusPackageVersion>(
          map['packageVersions']!,
          (value) => GetProductProductSkusPackageVersion.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      skuCode: pulumi.Input.fromValue(map['skuCode'] as String),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
    );
  }
}
