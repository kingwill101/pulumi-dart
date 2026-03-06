// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryEnterpriseReposRepoTag {
  /// The digest of the image.
  final pulumi.Input<String> digest;
  /// The time when the image was created.
  final pulumi.Input<String> imageCreate;
  /// The ID of the image.
  final pulumi.Input<String> imageId;
  /// The size of the image.
  final pulumi.Input<int> imageSize;
  /// The time when the image was last updated.
  final pulumi.Input<String> imageUpdate;
  /// The status of the image.
  final pulumi.Input<String> status;
  /// The tag of the image.
  final pulumi.Input<String> tag;

  /// Creates a new [GetRegistryEnterpriseReposRepoTag].
  /// [digest] The digest of the image.
  /// [imageCreate] The time when the image was created.
  /// [imageId] The ID of the image.
  /// [imageSize] The size of the image.
  /// [imageUpdate] The time when the image was last updated.
  /// [status] The status of the image.
  /// [tag] The tag of the image.
  const GetRegistryEnterpriseReposRepoTag({
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
      digest: pulumi.Input.fromValue(map['digest'] as String),
      imageCreate: pulumi.Input.fromValue(map['imageCreate'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      imageSize: pulumi.Input.fromValue(map['imageSize'] as int),
      imageUpdate: pulumi.Input.fromValue(map['imageUpdate'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}

