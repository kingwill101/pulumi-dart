// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImage {
  /// Media type of the artifact.
  final pulumi.Input<String> artifactMediaType;
  /// Digest of the image manifest.
  final pulumi.Input<String> imageDigest;
  /// Media type of the image manifest.
  final pulumi.Input<String> imageManifestMediaType;
  final pulumi.Input<String> imagePushedAt;
  final pulumi.Input<int> imageSizeInBytes;
  final pulumi.Input<List<String>> imageTags;
  /// AWS account ID associated with the public registry that contains the repository. If not specified, the default public registry is assumed.
  final pulumi.Input<String> registryId;
  /// Name of the public repository.
  final pulumi.Input<String> repositoryName;

  /// Creates a new [GetImagesImage].
  /// [artifactMediaType] Media type of the artifact.
  /// [imageDigest] Digest of the image manifest.
  /// [imageManifestMediaType] Media type of the image manifest.
  /// [imagePushedAt] Required.
  /// [imageSizeInBytes] Required.
  /// [imageTags] Required.
  /// [registryId] AWS account ID associated with the public registry that contains the repository. If not specified, the default public registry is assumed.
  /// [repositoryName] Name of the public repository.
  const GetImagesImage({
    required this.artifactMediaType,
    required this.imageDigest,
    required this.imageManifestMediaType,
    required this.imagePushedAt,
    required this.imageSizeInBytes,
    required this.imageTags,
    required this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactMediaType': artifactMediaType,
      'imageDigest': imageDigest,
      'imageManifestMediaType': imageManifestMediaType,
      'imagePushedAt': imagePushedAt,
      'imageSizeInBytes': imageSizeInBytes,
      'imageTags': imageTags,
      'registryId': registryId,
      'repositoryName': repositoryName,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      artifactMediaType: pulumi.Input.fromValue(map['artifactMediaType'] as String),
      imageDigest: pulumi.Input.fromValue(map['imageDigest'] as String),
      imageManifestMediaType: pulumi.Input.fromValue(map['imageManifestMediaType'] as String),
      imagePushedAt: pulumi.Input.fromValue(map['imagePushedAt'] as String),
      imageSizeInBytes: pulumi.Input.fromValue(map['imageSizeInBytes'] as int),
      imageTags: pulumi.Input.fromValue((map['imageTags'] as List).cast<String>()),
      registryId: pulumi.Input.fromValue(map['registryId'] as String),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
    );
  }
}
