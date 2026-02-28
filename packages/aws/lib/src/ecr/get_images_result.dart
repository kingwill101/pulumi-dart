// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_id.dart';

/// Result data returned by getImages.
class GetImagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of image objects containing image digest and tags. Each object has the following attributes:
  final List<GetImagesImageId> imageIds;
  final String region;
  final String? registryId;
  final String repositoryName;

  /// Creates a new [GetImagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageIds] List of image objects containing image digest and tags. Each object has the following attributes:
  /// [region] Required.
  /// [registryId] Optional.
  /// [repositoryName] Required.
  GetImagesResult({
    required this.id,
    required this.imageIds,
    required this.region,
    this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['imageIds'] =
        pulumi.Input.encodeList<GetImagesImageId, Map<String, dynamic>>(
            imageIds, (value) => value.toMap());
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
      imageIds: pulumi.Input.decodeList<GetImagesImageId>(
          map['imageIds'],
          (value) =>
              GetImagesImageId.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      registryId:
          map['registryId'] == null ? null : map['registryId'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
