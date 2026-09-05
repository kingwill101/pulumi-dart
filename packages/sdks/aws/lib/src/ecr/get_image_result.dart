// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? imageDigest;
  /// Date and time, expressed as a unix timestamp, at which the current image was pushed to the repository.
  final int? imagePushedAt;
  /// Size, in bytes, of the image in the repository.
  final int? imageSizeInBytes;
  final String? imageTag;
  /// List of tags associated with this image.
  final List<String>? imageTags;
  /// The URI for the specific image version specified by `imageTag` or `imageDigest`.
  final String? imageUri;
  final bool? mostRecent;
  final String? region;
  final String? registryId;
  final String? repositoryName;

  /// Creates a new [GetImageResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageDigest] Optional.
  /// [imagePushedAt] Date and time, expressed as a unix timestamp, at which the current image was pushed to the repository.
  /// [imageSizeInBytes] Size, in bytes, of the image in the repository.
  /// [imageTag] Optional.
  /// [imageTags] List of tags associated with this image.
  /// [imageUri] The URI for the specific image version specified by `imageTag` or `imageDigest`.
  /// [mostRecent] Optional.
  /// [region] Optional.
  /// [registryId] Optional.
  /// [repositoryName] Optional.
  const GetImageResult({
    this.id,
    this.imageDigest,
    this.imagePushedAt,
    this.imageSizeInBytes,
    this.imageTag,
    this.imageTags,
    this.imageUri,
    this.mostRecent,
    this.region,
    this.registryId,
    this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'imageDigest': ?imageDigest,
      'imagePushedAt': ?imagePushedAt,
      'imageSizeInBytes': ?imageSizeInBytes,
      'imageTag': ?imageTag,
      'imageTags': ?imageTags,
      'imageUri': ?imageUri,
      'mostRecent': ?mostRecent,
      'region': ?region,
      'registryId': ?registryId,
      'repositoryName': ?repositoryName,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageDigest: (() { final guardedValue = map['imageDigest']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imagePushedAt: (() { final guardedValue = map['imagePushedAt']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      imageSizeInBytes: (() { final guardedValue = map['imageSizeInBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      imageTag: (() { final guardedValue = map['imageTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageTags: (() { final guardedValue = map['imageTags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      imageUri: (() { final guardedValue = map['imageUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
