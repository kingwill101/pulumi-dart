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
    pulumi.Output<String>? deleteAfterImageUpload,
    required pulumi.Output<String> imageName,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? targetOssRegionId,
  }) :
      deleteAfterImageUpload = pulumi.Input.asOptionalInput<String>(deleteAfterImageUpload),
      imageName = pulumi.Input.asInput<String>(imageName),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      targetOssRegionId = pulumi.Input.asOptionalInput<String>(targetOssRegionId);

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
      deleteAfterImageUpload: map['deleteAfterImageUpload'] == null ? null : pulumi.Output.create<String>(map['deleteAfterImageUpload'] as String),
      imageName: pulumi.Output.create<String>(map['imageName'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      targetOssRegionId: map['targetOssRegionId'] == null ? null : pulumi.Output.create<String>(map['targetOssRegionId'] as String),
    );
  }
}

