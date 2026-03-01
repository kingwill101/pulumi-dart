// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_eds_image_image_args_doc}
class ImageArgs {
  /// The description of the image.
  final pulumi.Input<String>? description;
  /// The desktop id of the desktop.
  final pulumi.Input<String> desktopId;
  /// The name of the image.
  final pulumi.Input<String>? imageName;

  /// Creates a new [ImageArgs].
  /// [description] The description of the image.
  /// [desktopId] The desktop id of the desktop.
  /// [imageName] The name of the image.
  ImageArgs({
    String? description,
    required String desktopId,
    String? imageName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      desktopId = pulumi.Input.asInput<String>(desktopId),
      imageName = pulumi.Input.asOptionalInput<String>(imageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'desktopId': desktopId,
      'imageName': ?imageName,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      description: map['description'] == null ? null : map['description'] as String,
      desktopId: map['desktopId'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
    );
  }
}

