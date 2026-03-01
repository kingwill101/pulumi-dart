// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_image_export_image_export_args_doc}
/// The set of arguments for ImageExport.
/// {@endtemplate}
/// {@macro pulumi_ecs_image_export_image_export_args_doc}
class ImageExportArgs {
  /// The source image ID.
  final pulumi.Input<String> imageId;
  /// Save the exported OSS bucket.
  final pulumi.Input<String> ossBucket;
  /// The prefix of your OSS Object. It can be composed of numbers or letters, and the character length is 1 ~ 30.
  final pulumi.Input<String>? ossPrefix;

  /// Creates a new [ImageExportArgs].
  /// [imageId] The source image ID.
  /// [ossBucket] Save the exported OSS bucket.
  /// [ossPrefix] The prefix of your OSS Object. It can be composed of numbers or letters, and the character length is 1 ~ 30.
  ImageExportArgs({
    required pulumi.Output<String> imageId,
    required pulumi.Output<String> ossBucket,
    pulumi.Output<String>? ossPrefix,
  }) :
      imageId = pulumi.Input.asInput<String>(imageId),
      ossBucket = pulumi.Input.asInput<String>(ossBucket),
      ossPrefix = pulumi.Input.asOptionalInput<String>(ossPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': imageId,
      'ossBucket': ossBucket,
      'ossPrefix': ?ossPrefix,
    };
  }

  factory ImageExportArgs.fromMap(Map<String, dynamic> map) {
    return ImageExportArgs(
      imageId: pulumi.Output.create<String>(map['imageId'] as String),
      ossBucket: pulumi.Output.create<String>(map['ossBucket'] as String),
      ossPrefix: map['ossPrefix'] == null ? null : pulumi.Output.create<String>(map['ossPrefix'] as String),
    );
  }
}

