// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImage.
class GetImageArgs2 {
  /// Sha256 digest of the image manifest. At least one of `image_digest`, `image_tag`, or `most_recent` must be specified.
  final Input<String>? imageDigest;

  /// Tag associated with this image. At least one of `image_digest`, `image_tag`, or `most_recent` must be specified.
  final Input<String>? imageTag;

  /// Return the most recently pushed image. At least one of `image_digest`, `image_tag`, or `most_recent` must be specified.
  final Input<bool>? mostRecent;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the Registry where the repository resides.
  final Input<String>? registryId;

  /// Name of the ECR Repository.
  final Input<String> repositoryName;

  GetImageArgs2({
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

  factory GetImageArgs2.fromMap(Map<String, dynamic> map) {
    return GetImageArgs2(
      imageDigest: Input.asOptionalInput<String>(map['imageDigest']),
      imageTag: Input.asOptionalInput<String>(map['imageTag']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      region: Input.asOptionalInput<String>(map['region']),
      registryId: Input.asOptionalInput<String>(map['registryId']),
      repositoryName: Input.asInput<String>(map['repositoryName']),
    );
  }
}
