// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image.dart';
import 'get_images_image_id.dart';

/// Result data returned by getImages.
class GetImagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetImagesImageId>? imageIds;

  /// List of images returned. Each image contains:
  final List<GetImagesImage> images;
  final String region;

  /// AWS account ID associated with the public registry.
  final String? registryId;

  /// Name of the repository.
  final String repositoryName;

  /// Creates a new [GetImagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageIds] Optional.
  /// [images] List of images returned. Each image contains:
  /// [region] Required.
  /// [registryId] AWS account ID associated with the public registry.
  /// [repositoryName] Name of the repository.
  GetImagesResult({
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
          pulumi.Input.encodeList<GetImagesImageId, Map<String, dynamic>>(
              imageIdsValue, (value) => value.toMap());
    }
    map['images'] =
        pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(
            images, (value) => value.toMap());
    map['region'] = region;
    final registryIdValue = registryId;
    if (registryIdValue != null) {
      map['registryId'] = registryIdValue;
    }
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      id: map['id'] as String,
      imageIds: map['imageIds'] == null
          ? null
          : pulumi.Input.decodeList<GetImagesImageId>(
              map['imageIds'],
              (value) => GetImagesImageId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      images: pulumi.Input.decodeList<GetImagesImage>(
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
