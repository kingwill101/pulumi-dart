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
      deleteAfterImageUpload: map['deleteAfterImageUpload'] == null ? null : (map['deleteAfterImageUpload'] as String).input(),
      imageName: (map['imageName'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      targetOssRegionId: map['targetOssRegionId'] == null ? null : (map['targetOssRegionId'] as String).input(),
    );
  }
}

