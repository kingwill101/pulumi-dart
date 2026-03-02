// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReposRepoTag {
  /// Digest of this image.
  final pulumi.Input<String> digest;
  /// Create time of this image, unix time in nanoseconds.
  final pulumi.Input<int> imageCreate;
  /// Id of this image.
  final pulumi.Input<String> imageId;
  /// Status of this image, in bytes.
  final pulumi.Input<int> imageSize;
  /// Last update time of this image, unix time in nanoseconds.
  final pulumi.Input<int> imageUpdate;
  /// Status of this image.
  final pulumi.Input<String> status;
  /// Tag of this image.
  final pulumi.Input<String> tag;

  /// Creates a new [GetReposRepoTag].
  /// [digest] Digest of this image.
  /// [imageCreate] Create time of this image, unix time in nanoseconds.
  /// [imageId] Id of this image.
  /// [imageSize] Status of this image, in bytes.
  /// [imageUpdate] Last update time of this image, unix time in nanoseconds.
  /// [status] Status of this image.
  /// [tag] Tag of this image.
  GetReposRepoTag({
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

  factory GetReposRepoTag.fromMap(Map<String, dynamic> map) {
    return GetReposRepoTag(
      digest: (map['digest'] as String).input(),
      imageCreate: (map['imageCreate'] as int).input(),
      imageId: (map['imageId'] as String).input(),
      imageSize: (map['imageSize'] as int).input(),
      imageUpdate: (map['imageUpdate'] as int).input(),
      status: (map['status'] as String).input(),
      tag: (map['tag'] as String).input(),
    );
  }
}

