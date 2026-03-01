// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImageSharePermission resources.
class ImageSharePermissionState {
  /// Alibaba Cloud Account ID. It is used to share images.
  final pulumi.Input<String>? accountId;
  /// The source image ID.
  final pulumi.Input<String>? imageId;

  /// Creates a new [ImageSharePermissionState].
  /// [accountId] Alibaba Cloud Account ID. It is used to share images.
  /// [imageId] The source image ID.
  ImageSharePermissionState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? imageId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      imageId = pulumi.Input.asOptionalInput<String>(imageId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'imageId': ?imageId,
    };
  }

  factory ImageSharePermissionState.fromMap(Map<String, dynamic> map) {
    return ImageSharePermissionState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
    );
  }
}

