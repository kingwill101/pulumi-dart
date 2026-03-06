// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_image_copy_image_copy_args_doc}
/// The set of arguments for ImageCopy.
/// {@endtemplate}
/// {@macro pulumi_ecs_image_copy_image_copy_args_doc}
class ImageCopyArgs {
  final pulumi.Input<bool>? deleteAutoSnapshot;
  /// The description of the image. It must be 2 to 256 characters in length and must not start with http:// or https://. Default value: null.
  final pulumi.Input<String>? description;
  /// Indicates whether to encrypt the image.
  final pulumi.Input<bool>? encrypted;
  /// Indicates whether to force delete the custom image, Default is `false`.
  /// - true：Force deletes the custom image, regardless of whether the image is currently being used by other instances.
  /// - false：Verifies that the image is not currently in use by any other instances before deleting the image.
  final pulumi.Input<bool>? force;
  /// The image name. It must be 2 to 128 characters in length, and must begin with a letter or Chinese character (beginning with http:// or https:// is not allowed). It can contain digits, colons (:), underscores (_), or hyphens (-). Default value: null.
  final pulumi.Input<String>? imageName;
  /// Key ID used to encrypt the image.
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? name;
  /// The source image ID.
  final pulumi.Input<String> sourceImageId;
  /// The ID of the region to which the source custom image belongs. You can call [DescribeRegions](https://www.alibabacloud.com/help/doc-detail/25609.htm) to view the latest regions of Alibaba Cloud.
  final pulumi.Input<String> sourceRegionId;
  /// The tag value of an image. The value of N ranges from 1 to 20.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ImageCopyArgs].
  /// [deleteAutoSnapshot] Optional.
  /// [description] The description of the image. It must be 2 to 256 characters in length and must not start with http:// or https://. Default value: null.
  /// [encrypted] Indicates whether to encrypt the image.
  /// [force] Indicates whether to force delete the custom image, Default is `false`.
  /// [imageName] The image name. It must be 2 to 128 characters in length, and must begin with a letter or Chinese character (beginning with http:// or https:// is not allowed). It can contain digits, colons (:), underscores (_), or hyphens (-). Default value: null.
  /// [kmsKeyId] Key ID used to encrypt the image.
  /// [name] Optional.
  /// [sourceImageId] The source image ID.
  /// [sourceRegionId] The ID of the region to which the source custom image belongs. You can call [DescribeRegions](https://www.alibabacloud.com/help/doc-detail/25609.htm) to view the latest regions of Alibaba Cloud.
  /// [tags] The tag value of an image. The value of N ranges from 1 to 20.
  const ImageCopyArgs({
    this.deleteAutoSnapshot,
    this.description,
    this.encrypted,
    this.force,
    this.imageName,
    this.kmsKeyId,
    this.name,
    required this.sourceImageId,
    required this.sourceRegionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAutoSnapshot': ?deleteAutoSnapshot,
      'description': ?description,
      'encrypted': ?encrypted,
      'force': ?force,
      'imageName': ?imageName,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'sourceImageId': sourceImageId,
      'sourceRegionId': sourceRegionId,
      'tags': ?tags,
    };
  }

  factory ImageCopyArgs.fromMap(Map<String, dynamic> map) {
    return ImageCopyArgs(
      deleteAutoSnapshot: (() { final guardedValue = map['deleteAutoSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageId: pulumi.Input.fromValue(map['sourceImageId'] as String),
      sourceRegionId: pulumi.Input.fromValue(map['sourceRegionId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

