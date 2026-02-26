// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_images_image/get_images_image.dart';
import '../get_images_image_id/get_images_image_id2.dart';

/// Result data returned by getImages.
class GetImagesResult2 {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetImagesImageId2>? imageIds;

  /// List of images returned. Each image contains:
  final List<GetImagesImage> images;
  final String region;

  /// AWS account ID associated with the public registry.
  final String? registryId;

  /// Name of the repository.
  final String repositoryName;

  GetImagesResult2({
    required this.id,
    this.imageIds,
    required this.images,
    required this.region,
    this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final imageIdsValue = imageIds;
    if (imageIdsValue != null) {
      map['imageIds'] =
          Input.encodeList<GetImagesImageId2, Map<String, dynamic>>(
              imageIdsValue, (value) => value.toMap());
    }
    map['images'] = Input.encodeList<GetImagesImage, Map<String, dynamic>>(
        images, (value) => value.toMap());
    map['region'] = region;
    final registryIdValue = registryId;
    if (registryIdValue != null) {
      map['registryId'] = registryIdValue;
    }
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetImagesResult2.fromMap(Map<String, dynamic> map) {
    return GetImagesResult2(
      id: map['id'] as String,
      imageIds: map['imageIds'] == null
          ? null
          : Input.decodeList<GetImagesImageId2>(
              map['imageIds'],
              (value) => GetImagesImageId2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      images: Input.decodeList<GetImagesImage>(
          map['images'],
          (value) =>
              GetImagesImage.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      registryId:
          map['registryId'] == null ? null : map['registryId'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
