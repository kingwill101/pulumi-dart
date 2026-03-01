// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImageCopy resources.
class ImageCopyState {
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
  final pulumi.Input<String>? sourceImageId;
  /// The ID of the region to which the source custom image belongs. You can call [DescribeRegions](https://www.alibabacloud.com/help/doc-detail/25609.htm) to view the latest regions of Alibaba Cloud.
  final pulumi.Input<String>? sourceRegionId;
  /// The tag value of an image. The value of N ranges from 1 to 20.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ImageCopyState].
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
  ImageCopyState({
    pulumi.Output<bool>? deleteAutoSnapshot,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<bool>? force,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sourceImageId,
    pulumi.Output<String>? sourceRegionId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deleteAutoSnapshot = pulumi.Input.asOptionalInput<bool>(deleteAutoSnapshot),
      description = pulumi.Input.asOptionalInput<String>(description),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      force = pulumi.Input.asOptionalInput<bool>(force),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sourceImageId = pulumi.Input.asOptionalInput<String>(sourceImageId),
      sourceRegionId = pulumi.Input.asOptionalInput<String>(sourceRegionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAutoSnapshot': ?deleteAutoSnapshot,
      'description': ?description,
      'encrypted': ?encrypted,
      'force': ?force,
      'imageName': ?imageName,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'sourceImageId': ?sourceImageId,
      'sourceRegionId': ?sourceRegionId,
      'tags': ?tags,
    };
  }

  factory ImageCopyState.fromMap(Map<String, dynamic> map) {
    return ImageCopyState(
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : pulumi.Output.create<bool>(map['deleteAutoSnapshot'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sourceImageId: map['sourceImageId'] == null ? null : pulumi.Output.create<String>(map['sourceImageId'] as String),
      sourceRegionId: map['sourceRegionId'] == null ? null : pulumi.Output.create<String>(map['sourceRegionId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

