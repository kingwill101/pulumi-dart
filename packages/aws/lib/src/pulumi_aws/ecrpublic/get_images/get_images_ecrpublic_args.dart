// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_images_image_id/get_images_image_id_ecrpublic.dart';

/// Arguments for getImages.
class GetImagesEcrpublicArgs {
  /// One or more image ID filters. Each image ID can use either a tag or digest (or both). Each object has the following attributes:
  final pulumi.Input<List<GetImagesImageIdEcrpublic>>? imageIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// AWS account ID associated with the public registry that contains the repository. If not specified, the default public registry is assumed.
  final pulumi.Input<String>? registryId;

  /// Name of the public repository.
  final pulumi.Input<String> repositoryName;

  GetImagesEcrpublicArgs({
    this.imageIds,
    this.region,
    this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageIdsValue = imageIds;
    if (imageIdsValue != null) {
      map['imageIds'] = pulumi.Input.mapOptionalInputValue<
              List<GetImagesImageIdEcrpublic>, List<Map<String, dynamic>>>(
          imageIdsValue,
          (value) => pulumi.Input.encodeList<GetImagesImageIdEcrpublic,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory GetImagesEcrpublicArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesEcrpublicArgs(
      imageIds: pulumi.Input.asOptionalInput<List<GetImagesImageIdEcrpublic>>(
          map['imageIds']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      registryId: pulumi.Input.asOptionalInput<String>(map['registryId']),
      repositoryName: pulumi.Input.asInput<String>(map['repositoryName']),
    );
  }
}
