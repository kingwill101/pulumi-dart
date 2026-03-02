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
    required this.imageId,
    required this.ossBucket,
    this.ossPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': imageId,
      'ossBucket': ossBucket,
      'ossPrefix': ?ossPrefix,
    };
  }

  factory ImageExportArgs.fromMap(Map<String, dynamic> map) {
    return ImageExportArgs(
      imageId: (map['imageId'] as String).input(),
      ossBucket: (map['ossBucket'] as String).input(),
      ossPrefix: map['ossPrefix'] == null ? null : (map['ossPrefix']! as String).input(),
    );
  }
}

