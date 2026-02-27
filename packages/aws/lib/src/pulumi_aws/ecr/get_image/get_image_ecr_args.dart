// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getImage.
class GetImageEcrArgs {
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

  GetImageEcrArgs({
    this.imageDigest,
    this.imageTag,
    this.mostRecent,
    this.region,
    this.registryId,
    required this.repositoryName,
  });

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

  factory GetImageEcrArgs.fromMap(Map<String, dynamic> map) {
    return GetImageEcrArgs(
      imageDigest: pulumi.Input.asOptionalInput<String>(map['imageDigest']),
      imageTag: pulumi.Input.asOptionalInput<String>(map['imageTag']),
      mostRecent: pulumi.Input.asOptionalInput<bool>(map['mostRecent']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      registryId: pulumi.Input.asOptionalInput<String>(map['registryId']),
      repositoryName: pulumi.Input.asInput<String>(map['repositoryName']),
    );
  }
}
