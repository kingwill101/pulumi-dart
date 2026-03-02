// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_ecr_get_image_get_image_args_doc}
class GetImageArgs {
  /// Sha256 digest of the image manifest. At least one of `image_digest`, `image_tag`, or `most_recent` must be specified.
  final pulumi.Input<String>? imageDigest;
  /// Tag associated with this image. At least one of `image_digest`, `image_tag`, or `most_recent` must be specified.
  final pulumi.Input<String>? imageTag;
  /// Return the most recently pushed image. At least one of `image_digest`, `image_tag`, or `most_recent` must be specified.
  final pulumi.Input<bool>? mostRecent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the Registry where the repository resides.
  final pulumi.Input<String>? registryId;
  /// Name of the ECR Repository.
  final pulumi.Input<String> repositoryName;

  /// Creates a new [GetImageArgs].
  /// [imageDigest] Sha256 digest of the image manifest. At least one of `image_digest`, `image_tag`, or `most_recent` must be specified.
  /// [imageTag] Tag associated with this image. At least one of `image_digest`, `image_tag`, or `most_recent` must be specified.
  /// [mostRecent] Return the most recently pushed image. At least one of `image_digest`, `image_tag`, or `most_recent` must be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] ID of the Registry where the repository resides.
  /// [repositoryName] Name of the ECR Repository.
  GetImageArgs({
    this.imageDigest,
    this.imageTag,
    this.mostRecent,
    this.region,
    this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageDigest': ?imageDigest,
      'imageTag': ?imageTag,
      'mostRecent': ?mostRecent,
      'region': ?region,
      'registryId': ?registryId,
      'repositoryName': repositoryName,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      imageDigest: map['imageDigest'] == null ? null : (map['imageDigest'] as String).input(),
      imageTag: map['imageTag'] == null ? null : (map['imageTag'] as String).input(),
      mostRecent: map['mostRecent'] == null ? null : (map['mostRecent'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      registryId: map['registryId'] == null ? null : (map['registryId'] as String).input(),
      repositoryName: (map['repositoryName'] as String).input(),
    );
  }
}

