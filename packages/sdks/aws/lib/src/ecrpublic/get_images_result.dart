// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image.dart';
import 'get_images_image_id.dart';

/// Result data returned by getImages.
class GetImagesResult {
  final List<GetImagesImageId>? imageIds;
  /// List of images returned. Each image contains:
  final List<GetImagesImage>? images;
  final String? region;
  /// AWS account ID associated with the public registry.
  final String? registryId;
  /// Name of the repository.
  final String? repositoryName;

  /// Creates a new [GetImagesResult].
  /// [imageIds] Optional.
  /// [images] List of images returned. Each image contains:
  /// [region] Optional.
  /// [registryId] AWS account ID associated with the public registry.
  /// [repositoryName] Name of the repository.
  const GetImagesResult({
    this.imageIds,
    this.images,
    this.region,
    this.registryId,
    this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageIds': ?(() { final guardedValue = imageIds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagesImageId, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'images': ?(() { final guardedValue = images; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagesImage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'registryId': ?registryId,
      'repositoryName': ?repositoryName,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      imageIds: (() { final guardedValue = map['imageIds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagesImageId>(guardedValue, (value) => GetImagesImageId.fromMap((value as Map).cast<String, dynamic>())); })(),
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagesImage>(guardedValue, (value) => GetImagesImage.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
