// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// The image creation time.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to automatically release the instance after the image is packaged and uploaded. Only image builders are supported. Default value: `false`. Valid values:
  final pulumi.Input<String>? deleteAfterImageUpload;
  /// The name of the image. The name must be 2 to 128 characters in length. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter but cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? imageName;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The state of the image.
  final pulumi.Input<String>? status;
  /// The region of the target OSS where the image is to be stored.
  final pulumi.Input<String>? targetOssRegionId;

  /// Creates a new [ImageState].
  /// [createTime] The image creation time.
  /// [deleteAfterImageUpload] Specifies whether to automatically release the instance after the image is packaged and uploaded. Only image builders are supported. Default value: `false`. Valid values:
  /// [imageName] The name of the image. The name must be 2 to 128 characters in length. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter but cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [instanceId] The ID of the instance.
  /// [status] The state of the image.
  /// [targetOssRegionId] The region of the target OSS where the image is to be stored.
  ImageState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteAfterImageUpload,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? targetOssRegionId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteAfterImageUpload = pulumi.Input.asOptionalInput<String>(deleteAfterImageUpload),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetOssRegionId = pulumi.Input.asOptionalInput<String>(targetOssRegionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteAfterImageUpload': ?deleteAfterImageUpload,
      'imageName': ?imageName,
      'instanceId': ?instanceId,
      'status': ?status,
      'targetOssRegionId': ?targetOssRegionId,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteAfterImageUpload: map['deleteAfterImageUpload'] == null ? null : pulumi.Output.create<String>(map['deleteAfterImageUpload'] as String),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      targetOssRegionId: map['targetOssRegionId'] == null ? null : pulumi.Output.create<String>(map['targetOssRegionId'] as String),
    );
  }
}

