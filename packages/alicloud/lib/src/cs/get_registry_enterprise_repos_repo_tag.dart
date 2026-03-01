// ignore_for_file: unused_element, unnecessary_cast


class GetRegistryEnterpriseReposRepoTag {
  /// The digest of the image.
  final String digest;
  /// The time when the image was created.
  final String imageCreate;
  /// The ID of the image.
  final String imageId;
  /// The size of the image.
  final int imageSize;
  /// The time when the image was last updated.
  final String imageUpdate;
  /// The status of the image.
  final String status;
  /// The tag of the image.
  final String tag;

  /// Creates a new [GetRegistryEnterpriseReposRepoTag].
  /// [digest] The digest of the image.
  /// [imageCreate] The time when the image was created.
  /// [imageId] The ID of the image.
  /// [imageSize] The size of the image.
  /// [imageUpdate] The time when the image was last updated.
  /// [status] The status of the image.
  /// [tag] The tag of the image.
  GetRegistryEnterpriseReposRepoTag({
    required this.digest,
    required this.imageCreate,
    required this.imageId,
    required this.imageSize,
    required this.imageUpdate,
    required this.status,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'imageCreate': imageCreate,
      'imageId': imageId,
      'imageSize': imageSize,
      'imageUpdate': imageUpdate,
      'status': status,
      'tag': tag,
    };
  }

  factory GetRegistryEnterpriseReposRepoTag.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseReposRepoTag(
      digest: map['digest'] as String,
      imageCreate: map['imageCreate'] as String,
      imageId: map['imageId'] as String,
      imageSize: map['imageSize'] as int,
      imageUpdate: map['imageUpdate'] as String,
      status: map['status'] as String,
      tag: map['tag'] as String,
    );
  }
}

