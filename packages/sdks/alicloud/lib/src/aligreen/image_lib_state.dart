// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImageLib resources.
class ImageLibState {
  /// List of business scenarios. For example: ["bizTypeA", "bizTypeB", "bizTypeC"]
  final pulumi.Input<List<String>>? bizTypes;
  /// The category of the image library. Valid values: BLACK: a blacklist, WHITE: a whitelist, REVIEW: a review list
  final pulumi.Input<String>? category;
  /// Specifies whether to enable the image library. Valid values: true: Enable the image library. This is the default value. false: Disable the image library.
  final pulumi.Input<bool>? enable;
  /// The name of the image library defined by the customer. It can contain no more than 20 characters in Chinese, English, and underscore (_).
  final pulumi.Input<String>? imageLibName;
  /// The moderation scenario to which the custom image library applies. Valid values: PORN: pornography detection, AD: ad detection, ILLEGAL: terrorist content detection
  final pulumi.Input<String>? scene;

  /// Creates a new [ImageLibState].
  /// [bizTypes] List of business scenarios. For example: ["bizTypeA", "bizTypeB", "bizTypeC"]
  /// [category] The category of the image library. Valid values: BLACK: a blacklist, WHITE: a whitelist, REVIEW: a review list
  /// [enable] Specifies whether to enable the image library. Valid values: true: Enable the image library. This is the default value. false: Disable the image library.
  /// [imageLibName] The name of the image library defined by the customer. It can contain no more than 20 characters in Chinese, English, and underscore (_).
  /// [scene] The moderation scenario to which the custom image library applies. Valid values: PORN: pornography detection, AD: ad detection, ILLEGAL: terrorist content detection
  ImageLibState({
    this.bizTypes,
    this.category,
    this.enable,
    this.imageLibName,
    this.scene,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizTypes': ?bizTypes,
      'category': ?category,
      'enable': ?enable,
      'imageLibName': ?imageLibName,
      'scene': ?scene,
    };
  }

  factory ImageLibState.fromMap(Map<String, dynamic> map) {
    return ImageLibState(
      bizTypes: map['bizTypes'] == null ? null : ((map['bizTypes']! as List).cast<String>()).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      imageLibName: map['imageLibName'] == null ? null : (map['imageLibName']! as String).input(),
      scene: map['scene'] == null ? null : (map['scene']! as String).input(),
    );
  }
}

