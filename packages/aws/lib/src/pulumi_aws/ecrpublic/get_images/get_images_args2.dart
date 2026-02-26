// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_images_image_id/get_images_image_id2.dart';

/// Arguments for getImages.
class GetImagesArgs2 {
  /// One or more image ID filters. Each image ID can use either a tag or digest (or both). Each object has the following attributes:
  final Input<List<GetImagesImageId2>>? imageIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// AWS account ID associated with the public registry that contains the repository. If not specified, the default public registry is assumed.
  final Input<String>? registryId;

  /// Name of the public repository.
  final Input<String> repositoryName;

  GetImagesArgs2({
    this.imageIds,
    this.region,
    this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageIdsValue = imageIds;
    if (imageIdsValue != null) {
      map['imageIds'] = Input.mapOptionalInputValue<List<GetImagesImageId2>,
              List<Map<String, dynamic>>>(
          imageIdsValue,
          (value) => Input.encodeList<GetImagesImageId2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final registryIdValue = registryId;
    if (registryIdValue != null) {
      map['registryId'] = registryIdValue;
    }
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetImagesArgs2.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs2(
      imageIds: Input.asOptionalInput<List<GetImagesImageId2>>(map['imageIds']),
      region: Input.asOptionalInput<String>(map['region']),
      registryId: Input.asOptionalInput<String>(map['registryId']),
      repositoryName: Input.asInput<String>(map['repositoryName']),
    );
  }
}
