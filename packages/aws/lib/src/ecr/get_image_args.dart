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
    String? imageDigest,
    String? imageTag,
    bool? mostRecent,
    String? region,
    String? registryId,
    required String repositoryName,
  })  : imageDigest = pulumi.Input.asOptionalInput<String>(imageDigest),
        imageTag = pulumi.Input.asOptionalInput<String>(imageTag),
        mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
        region = pulumi.Input.asOptionalInput<String>(region),
        registryId = pulumi.Input.asOptionalInput<String>(registryId),
        repositoryName = pulumi.Input.asInput<String>(repositoryName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageDigestValue = imageDigest;
    if (imageDigestValue != null) {
      map['imageDigest'] = imageDigestValue;
    }
    final imageTagValue = imageTag;
    if (imageTagValue != null) {
      map['imageTag'] = imageTagValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
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

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      imageDigest:
          map['imageDigest'] == null ? null : map['imageDigest'] as String,
      imageTag: map['imageTag'] == null ? null : map['imageTag'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      registryId:
          map['registryId'] == null ? null : map['registryId'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
