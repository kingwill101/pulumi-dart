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
    pulumi.Output<List<GetImagesImageId>>? imageIds,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryId,
    required pulumi.Output<String> repositoryName,
  }) :
      imageIds = pulumi.Input.asOptionalInput<List<GetImagesImageId>>(imageIds),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryId = pulumi.Input.asOptionalInput<String>(registryId),
      repositoryName = pulumi.Input.asInput<String>(repositoryName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageIds': ?pulumi.Input.mapOptionalInputValue<List<GetImagesImageId>, List<Map<String, dynamic>>>(imageIds, (value) => pulumi.Input.encodeList<GetImagesImageId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'registryId': ?registryId,
      'repositoryName': repositoryName,
    };
  }

  factory GetImagesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagesArgs(
      imageIds: map['imageIds'] == null ? null : pulumi.Output.create<List<GetImagesImageId>>(pulumi.Input.decodeList<GetImagesImageId>(map['imageIds'], (value) => GetImagesImageId.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryId: map['registryId'] == null ? null : pulumi.Output.create<String>(map['registryId'] as String),
      repositoryName: pulumi.Output.create<String>(map['repositoryName'] as String),
    );
  }
}

