// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_id.dart';

/// {@template pulumi_ecrpublic_get_images_get_images_args_doc}
/// Arguments for getImages.
/// {@endtemplate}
/// {@macro pulumi_ecrpublic_get_images_get_images_args_doc}
class GetImagesArgs {
  /// One or more image ID filters. Each image ID can use either a tag or digest (or both). Each object has the following attributes:
  final pulumi.Input<List<GetImagesImageId>>? imageIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// AWS account ID associated with the public registry that contains the repository. If not specified, the default public registry is assumed.
  final pulumi.Input<String>? registryId;

  /// Name of the public repository.
  final pulumi.Input<String> repositoryName;

  /// Creates a new [GetImagesArgs].
  /// [imageIds] One or more image ID filters. Each image ID can use either a tag or digest (or both). Each object has the following attributes:
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] AWS account ID associated with the public registry that contains the repository. If not specified, the default public registry is assumed.
  /// [repositoryName] Name of the public repository.
  GetImagesArgs({
    List<GetImagesImageId>? imageIds,
    String? region,
    String? registryId,
    required String repositoryName,
  })  : imageIds =
            pulumi.Input.asOptionalInput<List<GetImagesImageId>>(imageIds),
        region = pulumi.Input.asOptionalInput<String>(region),
        registryId = pulumi.Input.asOptionalInput<String>(registryId),
        repositoryName = pulumi.Input.asInput<String>(repositoryName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageIdsValue = imageIds;
    if (imageIdsValue != null) {
      map['imageIds'] = pulumi.Input.mapOptionalInputValue<
              List<GetImagesImageId>, List<Map<String, dynamic>>>(
          imageIdsValue,
          (value) =>
              pulumi.Input.encodeList<GetImagesImageId, Map<String, dynamic>>(
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

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      imageIds: map['imageIds'] == null
          ? null
          : pulumi.Input.decodeList<GetImagesImageId>(
              map['imageIds'],
              (value) => GetImagesImageId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      registryId:
          map['registryId'] == null ? null : map['registryId'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
