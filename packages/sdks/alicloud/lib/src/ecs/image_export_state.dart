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
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? ossBucket,
    pulumi.Output<String>? ossPrefix,
  }) :
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      ossBucket = pulumi.Input.asOptionalInput<String>(ossBucket),
      ossPrefix = pulumi.Input.asOptionalInput<String>(ossPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': ?imageId,
      'ossBucket': ?ossBucket,
      'ossPrefix': ?ossPrefix,
    };
  }

  factory ImageExportState.fromMap(Map<String, dynamic> map) {
    return ImageExportState(
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      ossBucket: map['ossBucket'] == null ? null : pulumi.Output.create<String>(map['ossBucket'] as String),
      ossPrefix: map['ossPrefix'] == null ? null : pulumi.Output.create<String>(map['ossPrefix'] as String),
    );
  }
}

