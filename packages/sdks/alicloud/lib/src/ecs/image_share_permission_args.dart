// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_image_share_permission_image_share_permission_args_doc}
/// The set of arguments for ImageSharePermission.
/// {@endtemplate}
/// {@macro pulumi_ecs_image_share_permission_image_share_permission_args_doc}
class ImageSharePermissionArgs {
  /// Alibaba Cloud Account ID. It is used to share images.
  final pulumi.Input<String> accountId;
  /// The source image ID.
  final pulumi.Input<String> imageId;

  /// Creates a new [ImageSharePermissionArgs].
  /// [accountId] Alibaba Cloud Account ID. It is used to share images.
  /// [imageId] The source image ID.
  ImageSharePermissionArgs({
    required pulumi.Output<String> accountId,
    required pulumi.Output<String> imageId,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      imageId = pulumi.Input.asInput<String>(imageId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'imageId': imageId,
    };
  }

  factory ImageSharePermissionArgs.fromMap(Map<String, dynamic> map) {
    return ImageSharePermissionArgs(
      accountId: pulumi.Output.create<String>(map['accountId'] as String),
      imageId: pulumi.Output.create<String>(map['imageId'] as String),
    );
  }
}

