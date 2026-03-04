// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_ens_image_image_args_doc}
class ImageArgs {
  /// Specifies whether to automatically release the instance after the image is packaged and uploaded. Only image builders are supported. Default value: `false`. Valid values:
  final pulumi.Input<String>? deleteAfterImageUpload;

  /// The name of the image. The name must be 2 to 128 characters in length. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter but cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String> imageName;

  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;

  /// The region of the target OSS where the image is to be stored.
  final pulumi.Input<String>? targetOssRegionId;

  /// Creates a new [ImageArgs].
  /// [deleteAfterImageUpload] Specifies whether to automatically release the instance after the image is packaged and uploaded. Only image builders are supported. Default value: `false`. Valid values:
  /// [imageName] The name of the image. The name must be 2 to 128 characters in length. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter but cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [instanceId] The ID of the instance.
  /// [targetOssRegionId] The region of the target OSS where the image is to be stored.
  ImageArgs({
    this.deleteAfterImageUpload,
    required this.imageName,
    this.instanceId,
    this.targetOssRegionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAfterImageUpload': ?deleteAfterImageUpload,
      'imageName': imageName,
      'instanceId': ?instanceId,
      'targetOssRegionId': ?targetOssRegionId,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      deleteAfterImageUpload: (() {
        final guardedValue = map['deleteAfterImageUpload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      instanceId: (() {
        final guardedValue = map['instanceId'];
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
