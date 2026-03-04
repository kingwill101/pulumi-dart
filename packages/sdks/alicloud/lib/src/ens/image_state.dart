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
    this.createTime,
    this.deleteAfterImageUpload,
    this.imageName,
    this.instanceId,
    this.status,
    this.targetOssRegionId,
  });

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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteAfterImageUpload: (() {
        final guardedValue = map['deleteAfterImageUpload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageName: (() {
        final guardedValue = map['imageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetOssRegionId: (() {
        final guardedValue = map['targetOssRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
