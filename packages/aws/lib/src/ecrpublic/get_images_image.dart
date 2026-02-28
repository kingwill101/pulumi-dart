// ignore_for_file: unused_element, unnecessary_cast

class GetImagesImage {
  /// Media type of the artifact.
  final String artifactMediaType;

  /// Digest of the image manifest.
  final String imageDigest;

  /// Media type of the image manifest.
  final String imageManifestMediaType;
  final String imagePushedAt;
  final int imageSizeInBytes;
  final List<String> imageTags;

  /// AWS account ID associated with the public registry that contains the repository. If not specified, the default public registry is assumed.
  final String registryId;

  /// Name of the public repository.
  final String repositoryName;

  /// Creates a new [GetImagesImage].
  /// [artifactMediaType] Media type of the artifact.
  /// [imageDigest] Digest of the image manifest.
  /// [imageManifestMediaType] Media type of the image manifest.
  /// [imagePushedAt] Required.
  /// [imageSizeInBytes] Required.
  /// [imageTags] Required.
  /// [registryId] AWS account ID associated with the public registry that contains the repository. If not specified, the default public registry is assumed.
  /// [repositoryName] Name of the public repository.
  GetImagesImage({
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
    final map = <String, dynamic>{};
    map['artifactMediaType'] = artifactMediaType;
    map['imageDigest'] = imageDigest;
    map['imageManifestMediaType'] = imageManifestMediaType;
    map['imagePushedAt'] = imagePushedAt;
    map['imageSizeInBytes'] = imageSizeInBytes;
    map['imageTags'] = imageTags;
    map['registryId'] = registryId;
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      artifactMediaType: map['artifactMediaType'] as String,
      imageDigest: map['imageDigest'] as String,
      imageManifestMediaType: map['imageManifestMediaType'] as String,
      imagePushedAt: map['imagePushedAt'] as String,
      imageSizeInBytes: map['imageSizeInBytes'] as int,
      imageTags: (map['imageTags'] as List).cast<String>(),
      registryId: map['registryId'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
