// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_id.dart';

/// Result data returned by getImages.
class GetImagesResult {
  /// List of image objects containing image digest and tags. Each object has the following attributes:
  final List<GetImagesImageId>? imageIds;
  final String? region;
  final String? registryId;
  final String? repositoryName;

  /// Creates a new [GetImagesResult].
  /// [imageIds] List of image objects containing image digest and tags. Each object has the following attributes:
  /// [region] Optional.
  /// [registryId] Optional.
  /// [repositoryName] Optional.
  const GetImagesResult({
    this.imageIds,
    this.region,
    this.registryId,
    this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageIds': ?(() { final guardedValue = imageIds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagesImageId, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'registryId': ?registryId,
      'repositoryName': ?repositoryName,
    };
  }

  factory GetImagesResult.fromMap(Map<String, dynamic> map) {
    return GetImagesResult(
      imageIds: (() { final guardedValue = map['imageIds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagesImageId>(guardedValue, (value) => GetImagesImageId.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
