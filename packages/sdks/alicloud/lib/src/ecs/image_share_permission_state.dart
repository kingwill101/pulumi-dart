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
    this.accountId,
    this.imageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'imageId': ?imageId,
    };
  }

  factory ImageSharePermissionState.fromMap(Map<String, dynamic> map) {
    return ImageSharePermissionState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

