// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// The description of the image.
  final pulumi.Input<String>? description;
  /// The desktop id of the desktop.
  final pulumi.Input<String>? desktopId;
  /// The name of the image.
  final pulumi.Input<String>? imageName;
  /// The status of the image. Valid values: `Creating`, `Available`, `CreateFailed`.
  final pulumi.Input<String>? status;

  /// Creates a new [ImageState].
  /// [description] The description of the image.
  /// [desktopId] The desktop id of the desktop.
  /// [imageName] The name of the image.
  /// [status] The status of the image. Valid values: `Creating`, `Available`, `CreateFailed`.
  ImageState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? desktopId,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      desktopId = pulumi.Input.asOptionalInput<String>(desktopId),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'desktopId': ?desktopId,
      'imageName': ?imageName,
      'status': ?status,
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desktopId: map['desktopId'] == null ? null : pulumi.Output.create<String>(map['desktopId'] as String),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

