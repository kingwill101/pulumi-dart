// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudphone_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_cloudphone_image_image_args_doc}
class ImageArgs {
  /// The image name.
  final pulumi.Input<String> imageName;
  /// The instance ID.
  final pulumi.Input<String> instanceId;

  /// Creates a new [ImageArgs].
  /// [imageName] The image name.
  /// [instanceId] The instance ID.
  ImageArgs({
    required this.imageName,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'instanceId': instanceId,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      imageName: (map['imageName'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
    );
  }
}

