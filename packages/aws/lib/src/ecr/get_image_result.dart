// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getImage.
class GetImageResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String imageDigest;

  /// Date and time, expressed as a unix timestamp, at which the current image was pushed to the repository.
  final int imagePushedAt;

  /// Size, in bytes, of the image in the repository.
  final int imageSizeInBytes;
  final String? imageTag;

  /// List of tags associated with this image.
  final List<String> imageTags;

  /// The URI for the specific image version specified by `image_tag` or `image_digest`.
  final String imageUri;
  final bool? mostRecent;
  final String region;
  final String registryId;
  final String repositoryName;

  /// Creates a new [GetImageResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageDigest] Required.
  /// [imagePushedAt] Date and time, expressed as a unix timestamp, at which the current image was pushed to the repository.
  /// [imageSizeInBytes] Size, in bytes, of the image in the repository.
  /// [imageTag] Optional.
  /// [imageTags] List of tags associated with this image.
  /// [imageUri] The URI for the specific image version specified by `image_tag` or `image_digest`.
  /// [mostRecent] Optional.
  /// [region] Required.
  /// [registryId] Required.
  /// [repositoryName] Required.
  GetImageResult({
    required this.id,
    required this.imageDigest,
    required this.imagePushedAt,
    required this.imageSizeInBytes,
    this.imageTag,
    required this.imageTags,
    required this.imageUri,
    this.mostRecent,
    required this.region,
    required this.registryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['imageDigest'] = imageDigest;
    map['imagePushedAt'] = imagePushedAt;
    map['imageSizeInBytes'] = imageSizeInBytes;
    final imageTagValue = imageTag;
    if (imageTagValue != null) {
      map['imageTag'] = imageTagValue;
    }
    map['imageTags'] = imageTags;
    map['imageUri'] = imageUri;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    map['region'] = region;
    map['registryId'] = registryId;
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      id: map['id'] as String,
      imageDigest: map['imageDigest'] as String,
      imagePushedAt: map['imagePushedAt'] as int,
      imageSizeInBytes: map['imageSizeInBytes'] as int,
      imageTag: map['imageTag'] == null ? null : map['imageTag'] as String,
      imageTags: (map['imageTags'] as List).cast<String>(),
      imageUri: map['imageUri'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      region: map['region'] as String,
      registryId: map['registryId'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
