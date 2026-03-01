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
    required pulumi.Output<String> imageName,
    required pulumi.Output<String> instanceId,
  }) :
      imageName = pulumi.Input.asInput<String>(imageName),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'instanceId': instanceId,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      imageName: pulumi.Output.create<String>(map['imageName'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

