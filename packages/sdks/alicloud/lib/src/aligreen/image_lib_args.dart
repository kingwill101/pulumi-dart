// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aligreen_image_lib_image_lib_args_doc}
/// The set of arguments for ImageLib.
/// {@endtemplate}
/// {@macro pulumi_aligreen_image_lib_image_lib_args_doc}
class ImageLibArgs {
  /// List of business scenarios. For example: ["bizTypeA", "bizTypeB", "bizTypeC"]
  final pulumi.Input<List<String>>? bizTypes;
  /// The category of the image library. Valid values: BLACK: a blacklist, WHITE: a whitelist, REVIEW: a review list
  final pulumi.Input<String> category;
  /// Specifies whether to enable the image library. Valid values: true: Enable the image library. This is the default value. false: Disable the image library.
  final pulumi.Input<bool>? enable;
  /// The name of the image library defined by the customer. It can contain no more than 20 characters in Chinese, English, and underscore (_).
  final pulumi.Input<String> imageLibName;
  /// The moderation scenario to which the custom image library applies. Valid values: PORN: pornography detection, AD: ad detection, ILLEGAL: terrorist content detection
  final pulumi.Input<String> scene;

  /// Creates a new [ImageLibArgs].
  /// [bizTypes] List of business scenarios. For example: ["bizTypeA", "bizTypeB", "bizTypeC"]
  /// [category] The category of the image library. Valid values: BLACK: a blacklist, WHITE: a whitelist, REVIEW: a review list
  /// [enable] Specifies whether to enable the image library. Valid values: true: Enable the image library. This is the default value. false: Disable the image library.
  /// [imageLibName] The name of the image library defined by the customer. It can contain no more than 20 characters in Chinese, English, and underscore (_).
  /// [scene] The moderation scenario to which the custom image library applies. Valid values: PORN: pornography detection, AD: ad detection, ILLEGAL: terrorist content detection
  const ImageLibArgs({
    this.bizTypes,
    required this.category,
    this.enable,
    required this.imageLibName,
    required this.scene,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizTypes': ?bizTypes,
      'category': category,
      'enable': ?enable,
      'imageLibName': imageLibName,
      'scene': scene,
    };
  }

  factory ImageLibArgs.fromMap(Map<String, dynamic> map) {
    return ImageLibArgs(
      bizTypes: (() { final guardedValue = map['bizTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      category: pulumi.Input.fromValue(map['category'] as String),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageLibName: pulumi.Input.fromValue(map['imageLibName'] as String),
      scene: pulumi.Input.fromValue(map['scene'] as String),
    );
  }
}

