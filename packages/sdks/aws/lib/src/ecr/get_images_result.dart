// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_id.dart';

/// Result data returned by getImages.
class GetImagesResult {
  /// List of image objects containing image digest and tags. Each object has the following attributes:
  final List<GetImagesImageId> imageIds;
  final String region;
  final String? registryId;
  final String repositoryName;

  /// Creates a new [GetImagesResult].
  /// [imageIds] List of image objects containing image digest and tags. Each object has the following attributes:
  /// [region] Required.
  /// [registryId] Optional.
  /// [repositoryName] Required.
  const GetImagesResult({
    required this.imageIds,
    required this.region,
    this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageIds': pulumi.Input.encodeList<GetImagesImageId, Map<String, dynamic>>(imageIds, (value) => value.toMap()),
      'region': region,
      'registryId': ?registryId,
      'repositoryName': repositoryName,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      imageIds: pulumi.Input.decodeList<GetImagesImageId>(map['imageIds']!, (value) => GetImagesImageId.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryName: map['repositoryName'] as String,
    );
  }
}
