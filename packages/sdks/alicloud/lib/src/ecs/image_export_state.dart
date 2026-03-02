// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImageExport resources.
class ImageExportState {
  /// The source image ID.
  final pulumi.Input<String>? imageId;
  /// Save the exported OSS bucket.
  final pulumi.Input<String>? ossBucket;
  /// The prefix of your OSS Object. It can be composed of numbers or letters, and the character length is 1 ~ 30.
  final pulumi.Input<String>? ossPrefix;

  /// Creates a new [ImageExportState].
  /// [imageId] The source image ID.
  /// [ossBucket] Save the exported OSS bucket.
  /// [ossPrefix] The prefix of your OSS Object. It can be composed of numbers or letters, and the character length is 1 ~ 30.
  ImageExportState({
    this.imageId,
    this.ossBucket,
    this.ossPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': ?imageId,
      'ossBucket': ?ossBucket,
      'ossPrefix': ?ossPrefix,
    };
  }

  factory ImageExportState.fromMap(Map<String, dynamic> map) {
    return ImageExportState(
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      ossBucket: map['ossBucket'] == null ? null : (map['ossBucket']! as String).input(),
      ossPrefix: map['ossPrefix'] == null ? null : (map['ossPrefix']! as String).input(),
    );
  }
}

